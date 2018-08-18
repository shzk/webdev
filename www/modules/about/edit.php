<?php
if(!isAdmin()) {
  header("Location: ". HOST);
  die;
}

$about = R::load('about', 1);
if (isset($_POST['aboutEdit'])) {
  $errors = array();

  if (trim($_POST['userName']) == '') {
    $errors[] = ['title' => 'Введите Имя и Фамилию'];
  }

  if (trim($_POST['userInfo']) == '') {
    $errors[] = ['title' => 'Введите информацию для главной страницы'];
  }

  if (trim($_POST['userSkills']) == '') {
    $errors[] = ['title' => 'Введите навыки'];
  }
  

  if (empty($errors)) {
    //Allright, update!
    $about->name = htmlentities($_POST['userName']);
    $about->description = htmlentities($_POST['userInfo']);
    $about->skills = htmlentities($_POST['userSkills']);
    
    R::store($about);
    header('Location: ' . HOST . 'about');
    exit();
  }
}

// готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/about/edit.tpl";
$content = ob_get_contents();
ob_end_clean();

// выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_scripts.tpl";
include ROOT . "templates/_parts/_footer.tpl";
