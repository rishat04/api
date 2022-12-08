<?php

  namespace Api\Models;

  use Api\Core\DataBase;

  class MarkerDB extends DataBase {
    
    public function create($values) {
      $stmt = $this->pdo->prepare("INSERT INTO $this->table_name(title, author_id, firstComment, position, project_id, date) VALUES(?,?,?,?,?,?)");
      $res = $stmt->execute($values);
      return $res ? true : false;
    }

    public function delete($marker_id) {
      $stmt = $this->pdo->prepare("DELETE FROM $this->table_name WHERE marker_id=?");
      $stmt->execute([$marker_id]);
    }

    public function update($values) {
      $stmt = $this->pdo->prepare("UPDATE $this->table_name SET position=:position where marker_id=:marker_id");
      $stmt->execute($values);
    }
    
    public function get($project_id) {
      $stmt = $this->pdo->prepare("SELECT * FROM $this->table_name WHERE project_id=:project_id");
      $stmt->execute([':project_id' => $project_id]);
      return $stmt->fetchAll();
    }
    
    public function one($markerid) {
      $stmt = $this->pdo->prepare("SELECT * FROM $this->table_name WHERE marker_id=:marker_id");
      $stmt->execute([':marker_id' => $markerid]);
      return $stmt->fetch(\PDO::FETCH_ASSOC);
    } 
  }

?>