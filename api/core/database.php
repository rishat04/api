<?php
  namespace Api\Core;

  abstract class DataBase {
  
    public $pdo;
    protected $table_name;
    
    public function __construct($table_name) {
      $this->pdo = new \PDO('mysql:host=localhost;dbname=like_figma', 'root', 'root');
      $this->table_name = $table_name;
    }

    abstract public function create($values);

    abstract public function delete($condition);

    abstract public function update($condition);
    
    abstract public function get($project_id);
    
    abstract public function first($query);
  }

?>