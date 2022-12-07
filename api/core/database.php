<?php
  namespace Api\Core\Database;

  class DataBase {
  
    private $pdo;
    protected $table_name;
    
    public function __construct($table_name) {
      $this->pdo = new \PDO('mysql:host=localhost;dbname=like_figma', 'root', 'root');
      $this->table_name = $table_name;
    }

    public function create($values) {
      $stmt = $this->pdo->prepare("INSERT INTO $this->table_name(title, author_id, first_comment, position) VALUES({implode(',', $values)})");
      $stmt->execute();
    }

    public function delete($condition) {
      $stmt = $this->pdo->prepare("DELETE FROM $this->table_name WHERE $condition");
      $stmt->execute();
    }

    public function update($condition) {
      //$stmt = $this->pdo->prepare("UPDATE $this->table_name SET $condition where ");
      //$stmt->execute();
    }
    
    public function get($query) {
      $stmt = $this->pdo->prepare($query);
      $stmt->execute();
      return $stmt->fetchAll();
    }
    
    public function first($query) {
      $stmt = $this->pdo->prepare($query);
      $stmt->execute();
      return $stmt->fetch(\PDO::FETCH_ASSOC);
    } 
  }

?>