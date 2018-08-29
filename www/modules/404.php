<?php
$page_title = "Денис Токарев - 404 - Ничего не найдено :(";
$details = R::find('about', 1);
$aboutName = $details[1]['name'];
$aboutDescription = $details[1]['description'];

$about = R::load('about', 1);

// готовим контент для центральной части
ob_start();

include ROOT . "templates/404.tpl";
$content = ob_get_contents();
ob_end_clean();

// выводим шаблоны
include ROOT . "templates/_parts/404_head.tpl";
include ROOT . "templates/template.tpl";