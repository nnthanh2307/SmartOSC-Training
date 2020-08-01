<?php

    namespace Mvc\Controllers;
    
    class OrderController extends BaseController
    {
        public $folder = 'order';
        protected $orderModel;
        protected $orderDetailModel;
        protected $productModel;

        public function __construct() {
            $this->productModel = parent :: model("product");
            $this->orderModel = parent :: model("order");
            $this->orderDetailModel = parent :: model("detail");
        }

        public function view($id) {
            if ($id == 1) {
                $listOrder = $this->orderModel->getAll();
                $this->render("list",[
                    "listOrder" => $listOrder
                ]);
            } 
            if ($id == 2) {
                $orderID = $_GET["order"];
                $query = " INNER join order_detail on order_detail.product_id = product.product_id WHERE order_id = '{$orderID}'";
                $listProduct = $this->productModel->getAllProduct($query);
                $order = $this->orderModel->getAll("WHERE order_id = '{$orderID}'");

                $this->render("detail",[
                    "listProduct" => $listProduct,
                    "order" => $order[0]
                ]);
            } 
        }


    }
?>