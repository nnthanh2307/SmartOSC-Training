<?php

namespace Mvc\Models;

    class Order extends AbstractModel
    {
        public $tableName = "table_order";
        public $primaryKey = "order_id";

        public function inserOrder($data) {
            $this->insert($this->tableName,$data);
        }
    }

?>