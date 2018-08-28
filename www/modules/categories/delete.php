<?php

if(!isAdmin()) {
  header("Location: ". HOST);
  die;
}

$errors = array();
$category = R::load('categories', $_GET['id']);

if (isset($_POST['catDelete'])) {
  R::trash($category);
  header('Location: ' . HOST . "categories");
  exit();
}

// готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/categories/delete.tpl";
$content = ob_get_contents();
ob_end_clean();

// выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_scripts.tpl";