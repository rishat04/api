<?php

  namespace Api\Controllers;

  use Api\Models\MarkerDB;

  class Markers {

    private $model;

    public function __construct() {
      $this->model = new MarkerDB('markers');
    }

    public function create() {
      $json = file_get_contents('php://input');
      $data = json_decode($json);
      $title          = $data->title;
      $author_id      = $data->authorId;
      $first_comment  = $data->firstComment;
      $position       = json_encode($data->position);
      $project_id     = $data->projectId;
      $date           = $data->date;

      $result = $this->model->create([
        $title, $author_id, $first_comment, $position, $project_id, $date
      ]);

      // $marker_id = $this->model->pdo->lastInsertId();
      // $lastAdded = $this->model->one([$marker_id, $project_id]);

      // echo json_encode($lastAdded);
      exit;
    }

    public function get() {
      $project_id = $_GET['projectId'];
      $result = $this->model->get($project_id);

      echo json_encode($result);
      exit;
    }

    public function update() {
      $json = file_get_contents('php://input');
      $data = json_decode($json);
      $values = [ $data->position, $data->marker_id];
      $this->model->update($values);
    }

    public function delete() {
      $marker_id = $_GET['markerId'];
      $this->model->delete($marker_id);
    }

    public function one() {
      $marker_id = $_GET['markerId'];
      $project_id = $_GET['projectId'];
      $result = $this->model->one([$marker_id, $project_id]);

      echo json_encode($result);
      exit;
    }

  }

?>