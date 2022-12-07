<?php

  namespace Core\Controllers\Markers;

  use Core\Core\IController;
  use Core\Models\Markers\MarkerDB as MarkerDB;

  class Markers {

    private $model;

    public function __construct() {
      $this->model = new MarkerDB('markers');
    }

    public function create() {
      // $title = $_POST['title'];
      // $author_id = $_POST['author_id'];
      // $first_comment = $_POST['comment'];
      // $position = $_POST['position'];

      // $this->model->create([
      //   $title, $author_id, $first_comment, $position
      // ]);

      echo json_encode(['created' => true]);
      exit;
    }

    public function get() {}

    public function update() {}

    public function delete() {}

  }

?>