<?php

  namespace Api\Controllers\Markers;

  use Api\Core\IController;
  use Api\Models\Markers\MarkerDB;

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

      echo json_encode(['created' => true], true);
      exit;
    }

    public function get() {}

    public function update() {}

    public function delete() {}

  }

?>