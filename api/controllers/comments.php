<?php

  namespace Api\Controllers;

  use Api\Core\IController;

  class Comments{

    public function create() {}

    public function get() {
      echo json_encode(["data"=>'lox']);
      exit;
    }

    public function update() {}

    public function delete() {}

  }

?>