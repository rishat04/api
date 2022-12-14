<?php

  namespace Api\Models;

  use Api\Core\DataBase;

  class CommentDB extends DataBase {

    public function get($values) {
      $stmt = $this->pdo->prepare("SELECT * FROM $this->table_name WHERE markerId=?");
      $stmt->execute($values);
      return $stmt->fetchAll($this->pdo::FETCH_CLASS);
    }

    public function create($values) {
      $stmt = $this->pdo->prepare("INSERT INTO $this->table_name (text, authorId, markerId, created) VALUES(?,?,?,?)");
      $res = $stmt->execute($values);
      $stmt = $this->pdo->query("SELECT * FROM $this->table_name ORDER BY commentId DESC limit 1");
      $lastRow = $stmt->fetch($this->pdo::FETCH_ASSOC);
      if ($lastRow) {
        return $lastRow;
      }
      return false;
    }

    public function update($values) {
      $stmt = $this->pdo->prepare("
        UPDATE
          $this->table_name
        SET
          text=:text, authorId=:authorId, created=:created
        WHERE
          commentId=:commentId
      ");

      $stmt->bindParam(":text", $values->text);
      $stmt->bindParam(":authorId", $values->authorId);
      $stmt->bindParam(":commentId", $values->commentId);
      $stmt->bindParam(":created", $values->created);

      return $stmt->execute();
    }

    public function remove($commentId) {
      $stmt = $this->pdo->prepare("DELETE FROM $this->table_name where commentId=$commentId");
      return $stmt->execute();
    }

    public function one($values) {
      $stmt = $this->pdo->prepare("SELECT * FROM $this->table_name WHERE commentId=?");
      $stmt->execute($values);
      return $stmt->fetch(\PDO::FETCH_ASSOC);
    } 

  }

?>