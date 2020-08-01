<?php

    namespace Mvc\Models;

    class Post extends AbstractModel
    {
        public $tableName = "post";
        public $primaryKey = "post_id";

        public function insertPost($data) {
            $this->insert($this->tableName,$data);
        }
    }
    

?>