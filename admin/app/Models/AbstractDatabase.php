<?php

namespace Mvc\Models;
use mysqli;

class AbstractDatabase
{

    protected $connection;
    protected $statement;
    
    public function __construct() {
        return $this->connect();
    }

    private function connect() {
        if(!$this->connection) {
            $this->connection = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
            $this->connection->set_charset("utf8");
        }
        else {
            die("Connection failed:" . $this->connection->connect_error);
        }
    }

    private function disconnect() {
        if($this->connection) {
            $connection->close;
        }
    }

    public function insert($tableName, $data) {
        
        $fields = $data[0];
        $placeholders = $data[1];
        $values = $data[2];
        $sql = "INSERT INTO $tableName ($fields) VALUES ($placeholders) ";
        $this->statement = $this->connection->prepare($sql);
        $this->statement->bind_param(str_repeat("s",count($values)),...$values);
        $this->statement->execute();
        $this->statement->close();

        return $this->connection->insert_id;
    }

    public function update($tableName, $data, $where) {
        $fields = $data[0];
        $placeholders = $data[1];
        $values = $data[2];

        $sql = "UPDATE $tableName SET $placeholders $where";
        $this->statement = $this->connection->prepare($sql);
        $this->statement->bind_param(str_repeat("s",count($values)),...$values);
        $this->statement->execute();
        $this->statement->close();
        
        return $this->connection->affected_rows;
    }

    public function delete($tableName, $where = null,$id) {
        $sql = "DELETE FROM $tableName $where";
        $this->statement = $this->connection->prepare($sql);
        $this->statement->bind_param("s", $id);
        $this->statement->execute();
        $this->statement->close();
        
        return $this->connection->affected_rows;
    }

    public function fetch($tableName, $where = null) {
        $result = [];
        $queryString = "SELECT * FROM $tableName $where";
        $resultQuery = $this->connection->query($queryString);
        while ($row = $resultQuery->fetch_array(MYSQLI_ASSOC)) {
            $result[] = $row;
        }

        return $result;
    }
}
