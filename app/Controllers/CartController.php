<?php 

namespace Mvc\Controllers;

    class CartController extends BaseController
    {
        public $folder = 'cart';
        protected $productModel;
        protected $categoryModel;
        protected $orderModel;
        protected $orderDetailModel;
    

        public function __construct() {
            $this->productModel = parent :: model("product");
            $this->categoryModel = parent :: model("category");
            $this->orderModel = parent :: model("order");
            $this->orderDetailModel = parent :: model("detail");
        }

        public function view($id) {
            if ($id == 1) {
                $cartOrder = null;
                if(!empty($_SESSION["cart"]["buy"])) {
                    $cartOrder = $_SESSION['cart']['buy'];
                }
               
                $this->render("showcart",[
                    "cartOrder" => $cartOrder
                ]);
            }
            if ($id == 2) {
                $listOrder = [];
                $orderInfo = [];
                if(isset($_SESSION["cart"])) {
                    $listOrder = $_SESSION["cart"]["buy"];
                    $orderInfo = $_SESSION["cart"]["info"];
                }
                $this->checkOut();
                
                $this->render("checkout",[
                    "listOrder" => $listOrder,
                    "orderInfo" => $orderInfo
                ]);
            } 
            if ($id == 3) {
                $this->render("confirm",[
                ]);
            } 
        }

        public function addCart() {
            $productID = $_POST["productID"];
            $product = $this->productModel->getProductByID($productID)[0];

            $qty = ($_POST["qty"] != null) ? $_POST["qty"] : 1;
        
            if(isset($_SESSION["cart"]["buy"]) && array_key_exists($productID, $_SESSION["cart"]["buy"])) {
                if($_POST["qty"] != null ) {
                    $qty = $_SESSION["cart"]["buy"][$productID]["qty"] + (int)$_POST["qty"];
                }
                else {
                    $qty = $_SESSION["cart"]["buy"][$productID]["qty"] + 1;
                }   
            }

            $_SESSION["cart"]["buy"][$productID] = array(
                "productID" => $product["product_id"],
                "productName" => $product["Name"],
                "productImage" => explode(",", $product["Image"])[0],
                "qty" => $qty,
                "price" => $product["Price"],
                "subTotal" => $qty * $product["Price"], 
                "url" => "?scope=shop&action=view&id=2&productid={$product['product_id']}"
            );
            $this->getOrder();
            echo "success";
        }

        public function updateCart() {
            $_SESSION["cart"]["buy"][$_POST["productID"]]["qty"] = $_POST["qty"];
            $_SESSION["cart"]["buy"][$_POST["productID"]]["subTotal"] = $_POST["qty"] * $_SESSION["cart"]["buy"][$_POST["productID"]]["price"];
            $cartInfo = $this->getOrder();
                
            $result = [
                "qty" => $_SESSION["cart"]["buy"][$_POST["productID"]]["qty"],
                "subTotal" => $_SESSION["cart"]["buy"][$_POST["productID"]]["subTotal"],
                "total" => $cartInfo["total"]
            ];
            if ((int)$_POST["qty"] == 0) {
                unset($_SESSION["cart"]["buy"][$_POST["productID"]]);
            }
            echo json_encode($result);
        } 

        public function getOrder() {
            $numOrder = 0;
            $total = 0;
            foreach($_SESSION["cart"]["buy"] as $item) {
                $numOrder += $item['qty'];
                $total += $item["subTotal"];
            }
            $_SESSION["cart"]["info"] = [
                "numOrder" => $numOrder,
                "total" => $total
            ];
            return $_SESSION["cart"]["info"];
        }

        public function checkOut() {
            global $error;
            $data = [];
            if (!empty($_POST)) {
                foreach ($_POST as $key => $value) {
                    if ($value == "" || $value == null) {
                        $error[$key] = "{$key} not empty!";
                    }
                    else {
                        $data[$key] = $value;
                    }
                }
                $orderID = "ORDER".time();
                $data["order_id"] = $orderID;
                $data["num_order"] = $_SESSION["cart"]["info"]["numOrder"];
                $data["total"] = $_SESSION["cart"]["info"]["total"];

                if (empty($error)) {
                    $this->orderModel->inserOrder($data);
                    foreach($_SESSION["cart"]["buy"] as $key => $item) {
                        $detail = [
                            "order_id" => $orderID,
                            "product_id" => $item["productID"], 
                            "quantity" => $item["qty"],
                            "price" => $item["price"],
                            "sub_total" => $item["subTotal"], 
                            "url" => $item["url"],  
                        ];
                        $this->orderDetailModel->insertDetail($detail);
                        header("location: ?scope=cart&action=view&id=3");
                    }
                }
            }
        }

    }

?>