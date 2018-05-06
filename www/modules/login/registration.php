<?php

// echo "<pre>";
// print_r($_POST);
// echo "</pre>";

// $errors = array();

// $error1 = ['title' => 'Введите email'];
// $error2 = ['title' => 'Введите пароль'];
// $error3 = ['title' => 'Пользователь с таким email уже зарегистрирован', 'desc' => 'Используйте другой email, или воспользуйтесь восстановлением пароля'];

// $errors = [
//     ['title' => 'Введите email'],
//     ['title' => 'Введите пароль'],
//     ['title' => 'Пользователь с таким email уже зарегистрирован', 'desc' => 'Используйте другой email, или воспользуйтесь восстановлением пароля'],
// ];

// Если форма отправлена - делаем регистрацию
if (isset($_POST['register'])) {
  $errors = array();

  if (trim($_POST['email']) == '') {
  $errors[] = ['title' => 'Введите email'];
  }

  if (trim($_POST['password']) == '') {
  $errors[] = ['title' => 'Введите пароль'];
  }

  if (R::count('users', 'email = ?', array($_POST['email'])) > 0) {
  $errors[] = ['title' => 'Пользователь с таким email уже зарегистрирован', 'desc' => 'Используйте другой email, или воспользуйтесь восстановлением пароля'];
  }

  if (empty($errors)) {
    //Allright, register!
    $user = R::dispense('users');
    $user->email = htmlentities($_POST['email']);
    $user->password = password_hash($_POST['password'], PASSWORD_DEFAULT);
    R::store($user);
  }
}

ob_start();
include ROOT . "templates/login/form-registration.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/login/login-page.tpl";
include ROOT . "templates/_parts/_scripts.tpl";
