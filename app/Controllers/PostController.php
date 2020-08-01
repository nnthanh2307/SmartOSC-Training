<?php

    namespace Mvc\Controllers;
    
    class PostController extends BaseController
    {
        public $folder = 'post';

        public function __construct() {
            $this->postModel = parent :: model("post");
            $this->postCatModel = parent :: model("postcat");
        }

        public function view($id) {
            if ($id == 1) {
                $numPost = count($this->postModel->getAll());
                $numPage = ceil($numPost/4);
                $listPost = $this->postModel->getAll();

                $post = $this->postModel->getAll("LIMIT 0,4");

                $this->render("listpost",[
                    "listPost" => $listPost,
                    "numPage" => $numPage,
                    "post" => $post
                ]);
            }
            else if ($id == 2) {

            }
        }

        public function detail($id) {
            $post = $this->postModel->getAll("WHERE post_id = {$id}")[0];
            $this->render("detailpost",[
                "post" => $post
            ]);
        }

        public function pagination() {
            $start = ($_POST["page"] - 1) *4;
            $result = $this->postModel->renderPagination($start);
            echo json_encode(["content" => $result]);
         }
    }

?>