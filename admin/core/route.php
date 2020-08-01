<?php

    /**
     * Get query request params
     */

    $scope = isset($_REQUEST['scope']) ? $scope = $_REQUEST['scope'] : DEFAULT_SCOPE;
    $action = isset($_REQUEST['action']) ?$_REQUEST['action'] : DEFAULT_ACTION;
    $id = isset($_REQUEST['id'])? $_REQUEST['id'] : 1;

    /**
     * Define route
     */

    // $router = [
    //     'home' => ['view','add'],
    //     'page' => ['home', 'contact']
    // ];


    /**
     * Direct 404 to home page
     */

    // if (!array_key_exists($scope,$router) || !in_array($action, $router[$scope])) {
    //     $scope = DEFAULT_SCOPE;
    //     $action = DEFAULT_ACTION;
    // }

    /**
     * Create controller and process method
     */
    $class = '\\Mvc\\Controllers\\' .ucwords($scope) . 'Controller';
    $controller = new $class();
    $controller->$action($id);