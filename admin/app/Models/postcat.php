<?php

    namespace Mvc\Models;

    class Postcat extends AbstractModel
    {
        public $data = [];
        public $tableName = "post_category";
        public $primaryKey = "category_id";

        public function getCat($id = null) {
            if ($id === null) {
                $this->data = $this->getAll(); 
                return $this->data;
            }
            else {
                $where = "WHERE $this->primaryKey = $id";
                $this->data =  $this->getAll($where);
                return $this->data;
            }
        } 

        public function addCat($data) {
            $result = $this->prepareData($data);
            $this->database->insert("post_category", $result);
        }

        public function updateCat($data,$id) {
            $where = "WHERE $this->primaryKey = $id";
            parent :: update($data,$where);
    
        }
        public function deleteProductCat($id) {
            $this->delete($id);
        }

    }
    

?>