<?php
  
  require 'vendor/autoload.php';

  use Api\Router;

  header('Content-type: application/json');
  header('Access-Control-Allow-Origin: *');
  header('Access-Control-Allow-Methods: GET, POST');
  header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept, Authorization");

  Router::start();


?>