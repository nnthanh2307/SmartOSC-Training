<?php

namespace Mvc\Models;

    class Product extends AbstractModel
    {
        public $tableName = "product";
        public $primaryKey = "product_id";

        public function getProductByID($id) {
            $where = "WHERE $this->primaryKey = $id";
           return $this->getAll($where);
        }

        public function load($data, $select = null) {
            $where = '';    
            $conditionArray = [];
            $orderBy = '';    
            $limit = "";

            if (!empty($data)) {
                foreach ($data as $key => $value) {
                    if ($value != "" || $value != null) {
                        if($key === "category_id") {
                            $conditionArray[] = "product_category.$key = '$value'";
                        }
                        else if($key === "sorting") {
                            if($value == "1") {
                                $orderBy = "ORDER BY Name ASC";
                            }
                            else if($value == "2") {
                                $orderBy = "ORDER BY Name DESC";
                            }
                            else if($value == "3") {
                                $orderBy = "ORDER BY created_time ASC";
                            }
                            else if($value == "4") {
                                $orderBy = "ORDER BY created_time DESC";
                            }
                        }
                        else if($key === "page") {
                            if ($value != null) {
                                $start = ((int)$value - 1) * 9;
                                $limit = " LIMIT {$start},9";
                            }
                        }
                        else $conditionArray[] = "$key = '$value'";
                    }
                }
            }

            $condition = implode(" AND ", $conditionArray); //condition

            if($condition === "") {
                $where = $orderBy;
            }
            else {
                $where = "WHERE product_id IN 
                (
                    SELECT DISTINCT map.product_id FROM map 
                    INNER JOIN size ON size.size_id = map.size_id
                    INNER JOIN color ON color.color_id = map.color_id
                    INNER JOIN product_category ON product_category.product_id = map.product_id
                    inner join category ON category.category_id = product_category.category_id
                    WHERE {$condition}
                ) {$orderBy} ";
            }

            if ($select == null) {
                return [
                    "data" => $this->getAll($where),
                    "where" => $where
                ];
            }
            else {
                $where2 = ($limit === "") ? $where : $where.$limit;
                return [
                    "data" => $this->getAll($where2),
                    "where" => $where2
                ];
            }
        }

        public function renderProductView($result) {
            $data = "";
            if (!empty($result)) {
                foreach ($result as $key => $item) {
                    $image = explode(",",$item["Image"])[0];
                    $data.= "<div class='col-lg-4 col-md-4 col-sm-6'>
                        <div class='f_p_item'>
                        <div class='f_p_img'>
                        <a href='?scope=shop&action=view&id=2&productid={$item['product_id']}'>
                            <img class='img-fluid' src='admin/{$image}' alt=''>
                        </a>
                            <div class='p_icon'>
                                <span ><i class='lnr lnr-heart'></i></span>
                                <span class='addcart' item='{$item['product_id']}'><i class='lnr lnr-cart'></i></span>
                            </div>
                        </div>
                        <a href='#'><h4>{$item['Name']}</h4></a>
                        <h5>$ {$item['Price']}</h5>
                    </div>
                </div>";
                }
            }
            return $data;
        }

        public function renderPagination($numPage,$page=null) {
            $data = '';
            if ($numPage != 0) {
                $data .= " <li class='page-item'><p class=''><i class='fa fa-long-arrow-left' aria-hidden='true'></i></p></li>";
                for ($i = 1; $i <= $numPage; $i++) {
                    if($page == null) $page=1;
                    $active = ($i == $page) ? 'active' : '';
                    $data .= 	"<li class='page-item {$active} '><p class='pagi'>{$i}</p></li>";
                }
                $data .= "<li class='page-item'><p class=''><i class='fa fa-long-arrow-right' aria-hidden='true'></i></p></li>";
            }
            else {
                $data = "<span style='color:red'>No Product</span>";
            }
            return $data;
        }

        public function filter($data) {
            //load no
            $allProduct = $this->load($data)["data"];
            $page = $data["page"];
            $totalPage = ceil(count($allProduct)/9);
            $pagination = $this->renderPagination($totalPage,$page);
           
            $where = $this->load($data)["where"];

            if($data["page"] != null) {
                $product = $this->load($data,"page")["data"];
                $renderProduct = $this->renderProductView($product);
                $where = $this->load($data,"page")["where"];
            }
            else {
                $renderProduct = $this->renderProductView($allProduct);
            }
            
            $view = [
                "product" => $renderProduct,
                "pagination" => $pagination,
                "where" => $where
                
            ];
            echo json_encode($view);
        }

    }
