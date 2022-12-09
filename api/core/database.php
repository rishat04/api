<?php
  namespace Api\Core;

  abstract class DataBase {
  
    public $pdo;
    protected $table_name;
    protected $host     = "localhost";
    protected $db       = "like_figma";
    protected $user     = "root";
    protected $password = "root";
    
    public function __construct($table_name) {
      $this->pdo = new \PDO("mysql:host=$host;dbname=$db", $user, $password);
      $this->table_name = $table_name;
    }

    abstract public function create($values);

    abstract public function delete($condition);

    abstract public function update($condition);
    
    abstract public function get($project_id);
    
    abstract public function one($query);
  }

?>