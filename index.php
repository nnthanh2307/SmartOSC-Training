<?php
ini_set('display_errors', 1);
ob_start();
session_start();


require_once 'config/config.php'; #for database
require_once 'core/autoload.php'; #autoload class
require_once 'core/route.php'; #define route and controller
