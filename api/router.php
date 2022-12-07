<?php

  namespace Api\Router;


  class Router {

    public static function start() {
      $uri = $_SERVER["REQUEST_URI"];

      $exist = preg_match("/^(.*[\/\/])/",  $uri, $route);

      if ($exist == 1) {

        $route = $route[0];
        
        include 'api/core/routes.php';

        $controller_path = $routes[$route];
        $action = explode('/', $route)[2];


        if (class_exists($controller_path)) {
          $controller = new $controller_path;
          if (method_exists($controller, $action)) {
            $controller->$action();
          }
        }
      }

    }

  }


?>