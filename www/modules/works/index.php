<?php
$page_title = "Денис Токарев - Работы";
if(isset($_GET['tech_id']) && $_GET['tech_id'] != '') {
  $works = R::find('works', 'technology = ' . $_GET['tech_id'] . ' ORDER BY id DESC' );
} else {
  $works = R::find('works', ' ORDER BY id DESC' );
}



// готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/works/index.tpl";
$content = ob_get_contents();
ob_end_clean();

// выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_scripts.tpl";