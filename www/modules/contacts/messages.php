<?php

if(!isAdmin()) {
  header("Location: ". HOST);
  die;
}

if (isset($_GET['id'])) {
  $delMessage = R::load('messages', $_GET['id']);
  R::trash($delMessage);
  header('Location: ' . HOST . 'messages');
  exit();
}

$messages = R::find('messages', ' ORDER BY id DESC' );

// готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/contacts/messages.tpl";
$content = ob_get_contents();
ob_end_clean();

// выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_scripts.tpl";