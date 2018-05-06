<?php

// echo "<pre>";
// print_r($_POST);
// echo "</pre>";

// Если форма отправлена - делаем регистрацию
if (isset($_POST['login'])) {
  $errors = array();

  if (trim($_POST['email']) == '') {
  $errors[] = ['title' => 'Введите email'];
  }

  if (trim($_POST['password']) == '') {
  $errors[] = ['title' => 'Введите пароль'];
  }

  if (empty($errors)) {
    //Allright, login!
    $user = R::findOne('users', 'email = ?', array($_POST['email']));
    if ($user) {
      if (password_verify($_POST['password'], $user->password)) {
        header('Location: ' . HOST);
        exit();
      } else {
        $errors[] = ['title' => 'Пароль введен неверно'];
      }
    }
  }
}

ob_start();
include ROOT . "templates/login/form-login.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/login/login-page.tpl";
include ROOT . "templates/_parts/_scripts.tpl";
