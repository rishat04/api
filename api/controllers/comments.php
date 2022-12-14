<?php

  namespace Api\Controllers;

  use Api\Interfaces\IController;
  use Api\Models\CommentDB;

  class Comments {

    private $model;

    public function __construct() {
      $this->model = new CommentDB('comments');
    }

    public function get() {
      $markerId = $_GET['markerId'];
      $result = $this->model->get([$markerId]);

      echo json_encode($result);
      exit;
    }

    public function create() {
      $json     = file_get_contents("php://input");
      $fields   = json_decode($json);
      $text     = $fields->text;
      $created  = $fields->created;
      $authorId = $fields->authorId;
      $markerId = $fields->markerId;

      $result = $this->model->create([
        $text, $authorId, $markerId, $created
      ]);

      echo json_encode($result);
      exit;
    }

    public function update() {
      $json = file_get_contents('php://input');
      $data = json_decode($json);
      $values = [$data->commentId, $data->text];
      $result = $this->model->update($values);
      echo json_encode($result);
      exit;
    }

    public function delete() {
      $commentId = $_GET['commentId'];
      $this->model->delete($commentId);
    }

    public function one() {
      $commentId = $_GET['commentId'];
      $result = $this->model->one([$commentId]);

      echo json_encode($result);
      exit;
    }

  }

?>