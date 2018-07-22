<?php

if(!isAdmin()) {
  header("Location: ". HOST);
  die;
}
// echo "<pre>";
// print_r ($_POST);
// echo "</pre>";
// echo "<pre>";
// print_r ($_FILES);
// echo "</pre>";

$errors = array();

// Если форма отправлена - создаем пост
if (isset($_POST['postNew'])) {
  if (trim($_POST['postTitle']) == '') {
  $errors[] = ['title' => 'Введите название записи'];
  }
  if (trim($_POST['postText']) == '') {
  $errors[] = ['title' => 'Введите текст записи'];
  }
  if (empty($errors)) {
    $post = R::dispense('posts');
    $post->title = htmlentities($_POST['postTitle']);
    $post->text = htmlentities($_POST['postText']);
    R::store($post);

    header('Location: ' . HOST . "blog");
    exit();
  }
}

// готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/blog/post-new.tpl";
$content = ob_get_contents();
ob_end_clean();

// выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_scripts.tpl";
include ROOT . "templates/_parts/_footer.tpl";
