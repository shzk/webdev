<?php
// путь до корневой директории на сервере
define('ROOT', dirname(__FILE__) . '/');
require ROOT . "config.php";
require ROOT . "db.php";
require ROOT . "libs/functions.php";
session_start();
if (isset($_SESSION['logged_user'])) {$currentUser = $_SESSION['logged_user'];};

$contacts = R::load('contacts', 1);

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
        
    case 'blog/post-edit':
		include "modules/blog/post-edit.php";
        break;

    /* ---- CATEGORIES ----- */

    case 'categories':
		include "modules/categories/all.php";
        break;
        
    case 'category-new':
		include "modules/categories/new.php";
        break;
    
    case 'category-works-new':
		include "modules/categories/works-new.php";
        break;
    
    case 'category-edit':
		include "modules/categories/edit.php";
        break;

    case 'category-works-edit':
		include "modules/categories/works-edit.php";
        break;

    case 'category-delete':
		include "modules/categories/delete.php";
        break;

    case 'category-works-delete':
		include "modules/categories/works-delete.php";
        break;
    
    /* --- PAGES --- */

    case 'about':
        include "modules/about/index.php";
        break;

    case 'about-edit':
        include "modules/about/edit.php";
        break;

    case 'experience-edit':
        include "modules/about/experience-edit.php";
        break;

    case 'skills-edit':
        include "modules/about/skills-edit.php";
        break;
        
    case 'contacts':
        include "modules/contacts/index.php";
        break;
    
    case 'contacts-edit':
        include "modules/contacts/edit.php";
        break;
    
    case 'messages':
        include "modules/contacts/messages.php";
        break;

    case 'works':
        include "modules/works/index.php";
        break;
    
    case 'works/work':
        include "modules/works/single.php";
        break;

    case 'works/work-new':
		include "modules/works/work-new.php";
        break;

    case 'works/work-edit':
		include "modules/works/work-edit.php";
        break;

    default:
        include "modules/404.php";
        break;
}