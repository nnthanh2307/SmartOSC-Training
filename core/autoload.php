<?php

spl_autoload_register(function ($className) {

    //load app
    $app = 'app/';
    $prefix = 'Mvc\\';

    // Remove prefix
    $classWithoutPrefix = preg_replace('/^' . preg_quote($prefix) . '/', '', $className);


    // Replace \ to /
    $file = str_replace('\\', DIRECTORY_SEPARATOR, $classWithoutPrefix) . '.php';

    $filePath = $app . $file;
    
    if (file_exists($filePath)) {
        require_once $filePath;
    }

});

