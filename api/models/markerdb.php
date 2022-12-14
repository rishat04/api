<?php

  namespace Api\Models;

  use Api\Core\DataBase;

  class MarkerDB extends DataBase {
    
    public function create($values) {
      $stmt = $this->pdo->prepare("INSERT INTO $this->table_name (title, authorId, firstComment, position, projectId, created) VALUES(?,?,?,?,?,?)");
      $res = $stmt->execute($values);
      $stmt = $this->pdo->query("SELECT * FROM $this->table_name ORDER BY markerId DESC limit 1");
      $lastRow = $stmt->fetch($this->pdo::FETCH_ASSOC);
      if ($lastRow) {
        return $lastRow;
      }
      return false;
    }

    public function delete($marker_id) {
      $stmt = $this->pdo->prepare("DELETE FROM $this->table_name WHERE markerId=?");
      return $stmt->execute([$marker_id]);
    }

    public function update($values) {
      $stmt = $this->pdo->prepare("UPDATE $this->table_name SET position=? where markerId=?");
      $stmt->execute($values);
    }
    
    public function get($project_id) {
      $stmt = $this->pdo->prepare("
        SELECT
          *,
          (SELECT COUNT(*) FROM comments WHERE markerId = m.markerId) as commentsCount
        FROM
          markers AS m
        WHERE
          projectId = $project_id
      ");
      $stmt->execute();
      return $stmt->fetchAll(\PDO::FETCH_CLASS);
    }
    
    public function one($values) {
      $stmt = $this->pdo->prepare("SELECT * FROM $this->table_name WHERE markerId=? and projectId=?");
      $stmt->execute($values);
      return $stmt->fetch(\PDO::FETCH_ASSOC);
    } 
  }

?>