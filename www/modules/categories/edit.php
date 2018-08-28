<?php

if(!isAdmin()) {
  header("Location: ". HOST);
  die;
}

$errors = array();
$category = R::load('categories', @$_GET['id']);

// Если форма отправлена - редактируем категорию
if (isset($_POST['catEdit'])) {
  if (trim($_POST['catTitle']) == '') {
  $errors[] = ['title' => 'Введите название категории'];
  }
  if (empty($errors)) {
    $category->cat_title = htmlentities($_POST['catTitle']);
    R::store($category);
    header('Location: ' . HOST . "categories");
    exit();
  }
}

// готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/categories/edit.tpl";
$content = ob_get_contents();
ob_end_clean();

// выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_scripts.tpl";