<?php

namespace Mvc\Controllers;

class ShopController extends BaseController
{
    public $folder = 'shop';
    protected $productModel;
    protected $sizeModel;
    protected $colorModel;
    protected $categoryModel;

    protected $category = "";

    public function __construct() {
        $this->productModel = parent :: model("product");
        $this->sizeModel = parent :: model("size");
        $this->colorModel = parent :: model("color");
        $this->categoryModel = parent :: model("category");
    }
    
    public function view($id = null) {
        if($id == 1) {
            $product = $this->productModel->getAll(" LIMIT 0,9");
            $mostProduct = $this->productModel->getAll("LIMIT 0,12");
            $allProduct = $this->productModel->getAll();
            $size = $this->sizeModel->getAll();
            $color = $this->colorModel->getAll();
            $cat = $this->categoryModel->getAll();
            $totalPage = ceil(count($allProduct)/9);
            $pagination = $this->productModel->renderPagination($totalPage);
            $this->showCategories($cat);
            

            $this->render("category",[
                "product" => $product,
                "size" => $size,
                "color" => $color,
                "category" => $this->category,
                "pagination" => $pagination,
                "mostProduct" => $mostProduct
            ]);
        }

        if($id == 2) {
            $id = $_GET["productid"];
            $mostProduct = $this->productModel->getAll("LIMIT 0,12");
            $product = $this->productModel->getProductByID($id);
           
            $this->render("productdetail",[
                "product" => $product[0],
                "mostProduct" => $mostProduct
            ]);
        }
    }

    public function showCategories($categories, $parent_id = 0, $char = '') {
        $cate_child = array();
        foreach ($categories as $key => $item) {
            if ($item['parent_id'] == $parent_id) {
                $cate_child[] = $item;
                unset($categories[$key]);
            }
        }
        
        if ($cate_child) {
            $this->category .= '<ul class = "list">';
            foreach ($cate_child as $key => $item) {
                $this->category .= '<li>'."<a class='category' category='{$item['category_id']}'>".$item['category_name']. '</a>';
                $this->showCategories($categories, $item['category_id'], $char.'');
                $this->category .='</li>';
            }
            $this->category .= '</ul>';
        }
    }

    public function filterAjax() {
        $result = $this->productModel->filter($_POST);
    }
}

?>