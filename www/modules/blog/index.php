<?php
$page_title = "Денис Токарев - Блог";
if(isset($_GET['cat_id']) && $_GET['cat_id'] != '') {
  $posts = R::find('posts', 'cat = ' . $_GET['cat_id'] . ' ORDER BY id DESC' );
} else {
  $posts = R::find('posts', ' ORDER BY id DESC' );
}



// готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/blog/blog-all-posts.tpl";
$content = ob_get_contents();
ob_end_clean();

// выводим шаблоны
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_scripts.tpl";
include ROOT . "templates/_parts/_footer.tpl";
