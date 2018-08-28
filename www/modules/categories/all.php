<?php

if(!isAdmin()) {
  header("Location: ". HOST);
  die;
}

$categories = R::find('categories', ' ORDER BY id DESC' );
$work_categories = R::find('work_categories', ' ORDER BY id DESC' );

// готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/categories/all.tpl";
$content = ob_get_contents();
ob_end_clean();

// выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_scripts.tpl";