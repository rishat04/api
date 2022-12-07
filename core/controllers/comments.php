<?php

  namespace Core\Controllers\Comments;

  use Core\Core\IController;

  class Comments {

    public function create() {}

    public function get() {
      echo json_encode(["data"=>'lox']);
      exit;
    }

    public function update() {}

    public function delete() {}

  }

?>