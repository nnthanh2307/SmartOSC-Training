<?php

namespace Mvc\Controllers;

class HomeController extends BaseController
{
    public $folder = 'home';
    protected $productModel;

    public function __construct() {
        $this->productModel = parent :: model("product");
    }

    public function view() {

        $featured = $this->productModel->getAll("LIMIT 0,5");
        $lasted = $this->productModel->getAll("ORDER BY created_time DESC LIMIT 0,8");
        $mostProduct = $this->productModel->getAll("LIMIT 0,12");

        $this->render("home",[
            "featured" => $featured,
            "lasted" => $lasted,
            "mostProduct" => $mostProduct
        ]);
    } 

}

?>