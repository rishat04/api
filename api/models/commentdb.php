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
      $stmt = $this->pdo->prepare("INSERT INTO $this->table_name(comment, date, authorId, markerId) VALUES(?,?,?,?)");
      $res = $stmt->execute($values);
      return $res ? true : false;
    }

    public function update($values) {
      $stmt = $this->pdo->prepare("UPDATE $this->table_name set comment = ?, date= ? where commentId=?");
      $stmt->execute($values);
    }

    public function delete($values) {
      $stmt = $this->pdo->prepare("DELETE FROM $this->table_name where commentId=?");
      $stmt->execute($values);
    }

    public function one($values) {
      $stmt = $this->pdo->prepare("SELECT * FROM $this->table_name WHERE commentId=?");
      $stmt->execute($values);
      return $stmt->fetch(\PDO::FETCH_ASSOC);
    } 

  }

?>