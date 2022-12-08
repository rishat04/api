<?php

  // $routes = [
  //   '/markers/get/' => 'Markers',
  //   '/markers/create/' => 'Markers',
  //   '/comments/create/' => 'Comments',
  //   '/comments/update/' => 'Comments',
  //   '/comments/delete/' => 'Comments',
  //   '/comments/get/' => 'Comments'
  // ];

  $routes = [
    '/markers/get/' => 'Api\Controllers\Markers',
    '/markers/create/' => 'Api\Controllers\Markers',
    '/markers/first/' => 'Api\Controllers\Markers',
    '/comments/create/' => 'Api\Controllers\Comments',
    '/comments/update/' => 'Api\Controllers\Comments',
    '/comments/delete/' => 'Api\Controllers\Comments',
    '/comments/get/' => 'Api\Controllers\Comments'
  ];

?>