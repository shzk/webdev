<?php

require "config.php";
require "db.php";
require ROOT . "libs/functions.php";
session_start();
if (isset($_SESSION['logged_user'])) {$currentUser = $_SESSION['logged_user'];};

/* --------- РОУТЕР ----------- */
$uri = $_SERVER['REQUEST_URI'];
$uri = rtrim($uri, "/");
$uri = filter_var($uri, FILTER_SANITIZE_URL);
$uri = substr($uri, 1);
$uri = explode('?', $uri);

switch ($uri[0]) {
    case '':
        include "modules/main/index.php";
        break;
    
    /* --- USERS --- */
    case 'login':
        include "modules/login/login.php";
        break;

    case 'logout':
        include "modules/login/logout.php";
        break;

    case 'registration':
        include "modules/login/registration.php";
        break;

    case 'lost-password':
        include "modules/login/lost-password.php";
        break;

    case 'set-new-password':
        include "modules/login/set-new-password.php";
        break;

    case 'profile':
        include "modules/profile/index.php";
        break;

    case 'profile-edit':
        include "modules/profile/edit.php";
        break;

    /* --- BLOG --- */

    case 'blog':
        include "modules/blog/index.php";
        break;

    case 'blog/post':
        include "modules/blog/post.php";
        break;
    
    case 'blog/post-new':
		include "modules/blog/post-new.php";
		break;

    /* ---- CATEGORIES ----- */

    case 'blog/categories':
		include "modules/categories/all.php";
        break;
        
    case 'blog/category-new':
		include "modules/categories/new.php";
        break;
    
    case 'blog/category-edit':
		include "modules/categories/edit.php";
        break;

    case 'blog/category-delete':
		include "modules/categories/delete.php";
        break;
    
    /* --- PAGES --- */

    case 'about':
        include "modules/about/index.php";
        break;
        
    case 'contacts':
        include "modules/contacts/index.php";
        break;
    
    case 'contacts-edit':
        include "modules/contacts/edit.php";
        break;

    default:
        echo "404 and main page";
        break;
}
