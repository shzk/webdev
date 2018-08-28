<?php

if(!isAdmin()) {
  header("Location: ". HOST);
  die;
}

$errors = array();

// Если форма отправлена - создаем пост
if (isset($_POST['catNew'])) {
  if (trim($_POST['catTitle']) == '') {
  $errors[] = ['title' => 'Введите название записи'];
  }
  if (empty($errors)) {
    R::ext('xdispense', function($type){
      return R::getRedBean()->dispense( $type);
    }); //это расширение пришлось добавить, т к redbean
    $category = R::xdispense('work_categories');
    $category->w_cat_title = htmlentities($_POST['catTitle']);
    R::store($category);
    header('Location: ' . HOST . "categories");
    exit();
  }
}

// готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/categories/works-new.tpl";
$content = ob_get_contents();
ob_end_clean();

// выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_scripts.tpl";