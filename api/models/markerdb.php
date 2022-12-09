<?php

  namespace Api\Models;

  use Api\Core\DataBase;

  class MarkerDB extends DataBase {
    
    public function create($values) {
      $stmt = $this->pdo->prepare("INSERT INTO $this->table_name(title, author_id, firstComment, position, projectId, date) VALUES(?,?,?,?,?,?)");
      $res = $stmt->execute($values);
      return $res ? true : false;
    }

    public function delete($marker_id) {
      $stmt = $this->pdo->prepare("DELETE FROM $this->table_name WHERE markerId=?");
      $stmt->execute([$marker_id]);
    }

    public function update($values) {
      $stmt = $this->pdo->prepare("UPDATE $this->table_name SET position=? where markerId=?");
      $stmt->execute($values);
    }
    
    public function get($project_id) {
      $stmt = $this->pdo->prepare("SELECT * FROM $this->table_name WHERE projectId=:projectId");
      $stmt->execute([':projectId' => $project_id]);
      return $stmt->fetchAll($this->pdo::FETCH_CLASS);
    }
    
    public function one($values) {
      $stmt = $this->pdo->prepare("SELECT * FROM $this->table_name WHERE markerId=? and projectId=?");
      $stmt->execute($values);
      return $stmt->fetch(\PDO::FETCH_ASSOC);
    } 
  }

?>