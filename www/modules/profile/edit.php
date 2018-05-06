<?php

// echo "<pre>";
// print_r($_POST);
// echo "</pre>";

//получаем данные пользователя
$currentUser = $_SESSION['logged_user'];
$user = R::load('users', $currentUser->id);

// Если форма отправлена - редактируем данные пользователя
if (isset($_POST['profile-update'])) {
  $errors = array();

  if (trim($_POST['name']) == '') {
    $errors[] = ['title' => 'Введите Имя'];
  }

  if (trim($_POST['secondname']) == '') {
    $errors[] = ['title' => 'Введите Фамилию'];
  }

  if (trim($_POST['email']) == '') {
    $errors[] = ['title' => 'Введите email'];
  }
  
  if (R::count('users', 'email = ?', array($_POST['email'])) > 0 && $_POST['email'] != $user->email) {
    $errors[] = ['title' => 'Пользователь с таким email уже зарегистрирован', 'desc' => 'Используйте другой email, или воспользуйтесь восстановлением пароля'];
  }

  if (empty($errors)) {
    //Allright, login!
    $user->name = htmlentities($_POST['name']);
    $user->secondname = htmlentities($_POST['secondname']);
    $user->email = htmlentities($_POST['email']);
    $user->country = htmlentities($_POST['country']);
    $user->city = htmlentities($_POST['city']);
    R::store($user);
    $_SESSION['logged_user'] = $user;
    $currentUser = $_SESSION['logged_user'];
    // $_SESSION['logged_user']['name'] = $user->name;
    // $_SESSION['logged_user']['secondname'] = $user->secondname;
    // $_SESSION['logged_user']['email'] = $user->email;
    // $_SESSION['logged_user']['country'] = $user->country;
    // $_SESSION['logged_user']['city'] = $user->city;
    // print_r($_SESSION);
    header('Location: ' . HOST . 'profile');
    exit();
  }
}

// готовим контент для центральной части
ob_start();
include ROOT . "templates/profile/profile-edit.tpl";
$content = ob_get_contents();
ob_end_clean();

// выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_scripts.tpl";
include ROOT . "templates/_parts/_footer.tpl";