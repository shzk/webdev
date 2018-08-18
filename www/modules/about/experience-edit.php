<?php
if(!isAdmin()) {
  header("Location: ". HOST);
  die;
}

$about = R::load('about', 1);

if (isset($_POST['aboutUpdate'])) {
  $errors = array();

  if (trim($_POST['email']) == '') {
    $errors[] = ['title' => 'Введите Email'];
  }

  if (trim($_POST['tel']) == '') {
    $errors[] = ['title' => 'Введите Телефон'];
  }

  if (trim($_POST['address']) == '') {
    $errors[] = ['title' => 'Введите адрес'];
  }
  

  if (empty($errors)) {
    //Allright, update!
    $contacts->name = htmlentities($_POST['name']);
    $contacts->secondname = htmlentities($_POST['secondname']);
    $contacts->email = htmlentities($_POST['email']);
    $contacts->skype = htmlentities($_POST['skype']);
    $contacts->vk = htmlentities($_POST['vk']);
    $contacts->fb = htmlentities($_POST['fb']);
    $contacts->twitter = htmlentities($_POST['twitter']);
    $contacts->github = htmlentities($_POST['github']);
    $contacts->tel = htmlentities($_POST['tel']);
    $contacts->address = htmlentities($_POST['address']);

    R::store($contacts);
    header('Location: ' . HOST . 'contacts');
    exit();
  }
}

// готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/about/experience-edit.tpl";
$content = ob_get_contents();
ob_end_clean();

// выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_scripts.tpl";
include ROOT . "templates/_parts/_footer.tpl";
