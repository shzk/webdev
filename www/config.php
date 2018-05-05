<?php

// DB SETTINGS
define('DB_HOST', 'localhost');
define('DB_NAME', 'project');
define('DB_USER', 'root');
define('DB_PASS', 'root');

// путь до корневой директории скрипта по протоколу http
define('HOST', "http://{$_SERVER['HTTP_HOST']}/");

// путь до корневой директории на сервере
define('ROOT', dirname(__FILE__) . '/');
