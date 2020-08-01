<?php

    namespace Mvc\Models;

    class Category extends AbstractModel
    {
        public $data = [];
        public $tableName = "category";
        public $primaryKey = "category_id";

        

        public function addCat($data) {
            $result = $this->prepareData($data);
            $this->database->insert("category", $result);
        }
        
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
        public function updateCat($data,$id) {
            $where = "WHERE $this->primaryKey = $id";
            parent :: update($data,$where);
    
        }
    
    }

?>