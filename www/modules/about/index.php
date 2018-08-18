<?php
$page_title = "Денис Токарев - Обо мне";
$about = R::load('about', 1);
$technologies = R::find('technologies');

// готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/about/about.tpl";
$content = ob_get_contents();
ob_end_clean();

// выводим шаблоны
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_scripts.tpl";
include ROOT . "templates/_parts/_footer.tpl";