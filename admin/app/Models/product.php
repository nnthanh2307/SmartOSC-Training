<?php

namespace Mvc\Models;

    class Product extends AbstractModel
    {
        public $tableName = "product";
        public $primaryKey = "product_id";


        public function getAllProduct($where) {
            return $this->database->fetch($this->tableName, $where);
        }

        public function getProductByID($id) {
            $where = "WHERE $this->primaryKey = $id";
           return $this->getAll($where);
        }

        public function getCat($id = null) {
            if ($id = null) {
                $this->getAll();
            }
        }
        public function updateCat() {
            $data = $this->prepareData($data);
        }

        public function deleteProduct($id) {
            $this->deleteRelationship(["product_category","map"],$this->primaryKey,$id);
            $this->delete($id);
        }
        public function updateProduct($data,$id) {
            $where =  "WHERE $this->primaryKey = $id";
            echo $where;
            print_r ($data);
            $this->update($data,$where);
        }

    }
?>
