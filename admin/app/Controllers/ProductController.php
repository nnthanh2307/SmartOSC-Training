<?php
    namespace Mvc\Controllers;

    class ProductController extends BaseController
    {
        public $folder = 'product';

        protected $productCatModel;
        protected $color;
        protected $Size;
        
        public function __construct() {
            parent :: __construct();
            $this->model = parent :: model("product");
            $this->productCatModel = parent :: model("category");
            $this->color = parent :: model("color");
            $this->size = parent :: model("size");
        }

        public function insert() {
            $result = $this->validate();
            echo json_encode($result);
            if (!isset($error)) {
                $id = $this->model->insert("product",$result["data"]);
                foreach ($result["array"]["Categories"] as $key => $value) {
                    $this->model->insert("product_category",[
                        "product_id" => (int)$id,
                        "category_id" => (int)$value
                    ]);  
                }
                
                foreach ($result["array"]["color_id"] as $key => $color) {
                    foreach($result["array"]["size_id"] as $key => $size) {
                        $this->model->insert("map",[
                            "product_id" => (int)$id,
                            "color_id" => (int)$color,
                            "size_id" => (int)$size
                        ]);  
                    } 
                }
                echo json_encode($result["data"]);
            }
            else {
                echo json_encode($error);
            }
        }

        public function updateProduct() {
            $result = $this->validate("update");
            $this->model->updateProduct($result["data"],$_POST["item"]);
        }

        public function delete() {
            if($_SERVER['REQUEST_METHOD'] == 'POST') {
                $action = $_POST["act"];
                $item = $_POST["item"];
                if ($action == "product") {
                    $this->model->deleteProduct($item);
                }
                else {
                    $this->productCatModel->deleteProductCat($item);
                }
            }    
    }

        public function view($id) {
            if ($id == 1) {
                $totalPage = ceil(count($this->model->getAll())/8);
                $page = (isset($_GET["page"])) ? $_GET["page"] : 1;
                $start = ($page - 1) * 8;
                $where = " LIMIT {$start},8";
                $product = $this->model->getAll($where);
                $this->render('listproduct',[
                    "product" => $product,
                    "totalPage" => $totalPage,
                    "page" => $page,
                    "numProduct" => count($this->model->getAll())
                ]);
            }
            else if ($id == 2) {
                $result = $this->result("dequyListCat");
                $listCat = $this->productCatModel->getCat();
                $this->render('listcategory',[
                    "listCat" => $listCat,
                    "dequy" => $result
                ]);
            }
            else if ($id == 3) {
                $result = $this->result("dequyProductCat");
                $size = $this->size->getAll();
                $color = $this->color->getAll();
                $this->render('addproduct',[
                    "dequy" => $result,
                    "color" => $color,
                    "size" => $size
                ]);
            }
            else if ($id == 4) {
                $result = $this->result("dequyProductCat");
                $productID = $_GET["product"];
                $size = $this->size->getAll();
                $color = $this->color->getAll();
                $product = $this->model->getProductByID($productID);     
                $this->render('updateproduct',[
                    "product" => $product[0],
                    "dequy" => $result,
                    "color" => $color,
                    "size" => $size
                ]);
            }
        }

        public function addCategory() {
            $result = $this->result("dequyProductCat");
            $this->formCategory();
            $this->render('addcategory',[
                "dequy" => $result,
                ]);
        }

        public function updateCat($id) {
            $cat = $this->productCatModel->getCat($id);
            $update = $_GET["action"];
            $result = $this->result("dequyProductCat");
            $this->formCategory($update,$id);
            $this->render('updatecat',[
                "cat" => $cat[0],
                "dequy" => $result
            ]);
        }

        public function formCategory($update = null,$id = null) {
            global $data, $error;
            if (isset($_POST["btn-submit"])) {
                if (!empty($_POST["categoryname"])) {
                    $data["category_name"] = $_POST["categoryname"];
                }
                else {
                    $error["categoryname"] = "Category Name not empty";
                }
                $data["parent_id"] = !empty($_POST["parent_id"]) ? $_POST["parent_id"] : "0";
                if (empty($error)) {
                    if ($update != null) {
                        if (empty($_POST["parent_id"])) {
                            unset($data["parent_id"]);
                        }
                        $this->productCatModel->updateCat($data,$id);
                        header("location: ?scope=product&action=view&id=2");
                    }
                    else {
                        $this->productCatModel->addCat($data);  
                        header("location: ?scope=product&action=view&id=2");
                    }
                }
                else {
                    return $error;
                }
            }
        }

        public function ajaxImage() {
            $result = [];
            $num_images = count($_FILES['file']['name']);
            $target_dir = "public/media/";

            for($i = 0; $i < $num_images; $i++){
                $target_file = $target_dir . basename($_FILES['file']['name'][$i]);

                if (move_uploaded_file($_FILES["file"]["tmp_name"][$i], $target_file)) {
                    $result[] = $target_file;
                } 
            }
            $result = implode(",",$result);
            echo $result;
        }

        public function result($process) {
            $listCat = $this->productCatModel->getCat();
            $result = $this->library->load("dequy");
            $result->$process($listCat);
            $res = $result->getResult();
            return $res;
        }
        
        public function validate($update = null) {
            global $error;
            $data = [];  //chua product
            $array = [];  //chua multi select option
            if (!empty($_POST)) {
                foreach($_POST as $key => $value) {
                    if ($value === "" || $value === null) {
                        $error[$key] = $key . " not Empty";
                    }
                    else {
                        if(is_array($value)) {
                            if($key === "Categories" || $key === "color_id" || $key === "size_id") {
                                $array[$key]= $value;
                                continue; 
                            }
                            $data[$key] = implode(",",$value);
                        }
                        else {
                            if($key == "item") continue;
                            else $data[$key] = $value;
                        }
                    }
                }
            }

            if($update != null) {
                return [
                    "data" => $data,
                    "array" => $array
                ];
            }

            if (empty($error)) { 
                return [
                    "data" => $data,
                    "array" => $array
                ];
            }
            else {
                return $error;
            }
        }
    }
    
?>