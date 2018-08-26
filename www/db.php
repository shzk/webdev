<?php
include "libs/rb-mysql.php";
R::setup('mysql:host=' . DB_HOST . ';dbname=' . DB_NAME, DB_USER, DB_PASS);
// R::freeze(TRUE);