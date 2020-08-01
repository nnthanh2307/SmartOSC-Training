<?php

    namespace Mvc\Controllers;
    
    class PostController extends BaseController
    {

        public $folder = 'post';

        public function __construct() {
            parent :: __construct();
            $this->postModel = parent :: model("post");
            $this->postCatModel = parent :: model("postcat");

        }

        public function addPost() {
            $result = $this->validate();
            $this->postModel->insertPost($result);
        }

        public function validate($update = null) {
            $data = [];
            $error = [];
            if (!empty($_POST)) { 
                foreach($_POST as $key => $value) {
                    $value = trim($value);
                    if($value != null || $value != "") {
                        $data[$key] = $value;
                    }
                    else {
                        $error[$key] = $key . " not empty!";
                    }
                }
            }
            return $data;
        }

        public function view($id) {
            //view list post
            if ($id == 1) {
                $listPost = $this->postModel->getAll();
                $this->render("listpost",[
                    "listPost" => $listPost
                ]);
            }
            //view list post category
            else if ($id == 2) {
                $result = $this->result("dequyListCat2");
                $listCat = $this->postCatModel->getCat();
                $this->render("listcategory",[
                    "listCat" => $listCat,
                    "dequy" => $result
                ]);
            }
            //view add post
            else if ($id == 3) {
                $result = $this->result("dequyProductCat");
                $this->render("addpost",[
                    "dequy" => $result
                ]);
            }
        }

        public function addpostcat() {
            $result = $this->result("dequyProductCat");
            $this->formCategory();
            $this->render('addpostcat',[
                "dequy" => $result,
            ]);
        }
    
        public function updatePostCat($id) {     
            $update = $_GET["action"];
            $this->formCategory($update,$id);
            $result = $this->result("dequyProductCat");
            $cat = $this->postCatModel->getCat($id);
            $this->render('updatepostcat',[
                "cat" => $cat[0],
                "dequy" => $result
            ]);
        }

        public function formCategory($update = null,$id = null) {
            global $data, $error;
            if (isset($_POST["btn-submit"])) {
                if (!empty($_POST["category_name"])) {
                    $data["category_name"] = $_POST["category_name"];
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
                        $this->postCatModel->updateCat($data,$id);
                        header("location: ?scope=post&action=view&id=2");
                    }
                    else {
                        $this->postCatModel->addCat($data);  
                        header("location: ?scope=post&action=view&id=2");
                    }
                }
                else {
                    return $error;
                }
            }
        }
        
        public function result($process) {
            $listCat = $this->postCatModel->getCat();
            $result = $this->library->load("dequy");
            $result->$process($listCat);
            $res = $result->getResult();
            return $res;
        }

        public function ajaxImage() {
            $result = [];
            $num_images = count($_FILES['file']['name']);
            $target_dir = "public/images/post/";
            for($i = 0; $i < $num_images; $i++){
                $target_file = $target_dir . basename($_FILES['file']['name'][$i]);

                if (move_uploaded_file($_FILES["file"]["tmp_name"][$i], $target_file)) {
                    $result[] = $target_file;
                } 
            }
            $result = implode(",",$result);
            echo $result;
        }

    }
?>