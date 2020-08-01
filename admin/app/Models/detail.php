<?php

namespace Mvc\Models;

class Detail extends AbstractModel
{
    public $tableName = "order_detail";
    public $primaryKey = "id";

    public function insertDetail($data) {
        $this->insert($this->tableName,$data);
    }
}

?>