<?php
$page_title = "Денис Токарев - Регистрация";
// Если форма отправлена - делаем регистрацию
if (isset($_POST['register'])) {
  $errors = array();

  if (trim($_POST['email']) == '') {
  $errors[] = ['title' => 'Введите email'];
  }

  if (trim($_POST['password']) == '') {
  $errors[] = ['title' => 'Введите пароль'];
  }
  if (trim($_POST['name']) == '') {
  $errors[] = ['title' => 'Введите имя'];
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
    $user = R::findOne('users', 'email = ?', array($_POST['email'])); //пришлось выбирать дополнительно пользователя, т к при создании мы не указываем role и она была пустая
    $_SESSION['logged_user'] = $user;
    $_SESSION['login'] = "1";
    $_SESSION['role'] = $user->role;

    header('Location: ' . HOST . 'profile-edit');
    exit();
  }
}

ob_start();
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/login/form-registration.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/login/login-page.tpl";
include ROOT . "templates/_parts/_scripts.tpl";
