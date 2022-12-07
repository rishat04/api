<?php
  
  require 'vendor/autoload.php';

  use Api\Router\Router;

  header('Access-Control-Allow-Origin: *');
  header('Access-Control-Allow-Methods: GET, POST');
  header("Access-Control-Allow-Headers: X-Requested-With");

  Router::start();


?>