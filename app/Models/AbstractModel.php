<?php

namespace Mvc\Models;

abstract class AbstractModel
{
    protected $database;
    protected $tableName = null;
    protected $primaryKey = null;

    public function __construct() {
        $this->database = new AbstractDatabase();
    }

    public function getAll($where= null) {
        return $this->database->fetch($this->tableName, $where);
    }

    public function insert($tableName,$data) {
        $result = $this->prepareData($data);
        return $this->database->insert($tableName,$result);
    }

    public function update($data,$where) {
        $data = $this->prepareData($data,"update");
        $this->database->update($this->tableName,$data,$where);
    }
    
    public function delete($id) {
        $where = "WHERE $this->primaryKey =?";
        $this->database->delete($this->tableName,$where,$id);
    }

    public function deleteRelationship($table= null,$column,$id) {
        if($column != null) {
            foreach($table as $key => $table) {
                $where = "WHERE $column = ?";
                $this->database->delete($table,$where,$id);
            }
        }
    }

    protected function prepareData($data,$type = "insert") {
        $fields = '';
        $placeholders = '';
        $values = [];
        foreach ($data as $field => $value ) {
            $fields .= "{$field},";
            $values[] = $value;
            if ( $type == 'update') {
                $placeholders .= $field . '=?,';
            } else {
                $placeholders .= '?,';
            }
        }
        $fields = substr($fields, 0, -1);
        $placeholders = substr($placeholders, 0, -1);
        
        return [$fields, $placeholders, $values];
    }
}
