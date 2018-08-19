<?php
$page_title = "Денис Токарев - Главная";
$details = R::find('about', 1);
$aboutName = $details[1]['name'];
$aboutDescription = $details[1]['description'];

$about = R::load('about', 1);
$posts = R::find('posts', ' ORDER BY id DESC LIMIT 3' );

// готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/main/main.tpl";
$content = ob_get_contents();
ob_end_clean();

// выводим шаблоны
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_scripts.tpl";
include ROOT . "templates/_parts/_footer.tpl";
