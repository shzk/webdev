<?php
if(!isAdmin()) {
  header("Location: ". HOST);
  die;
}

if (isset($_GET['id'])) {
  $delJob = R::load('jobs', $_GET['id']);
  R::trash($delJob);
  header('Location: ' . HOST . 'experience-edit');
  exit();
}

$jobs = R::find('jobs', 'ORDER BY id DESC');

if (isset($_POST['newWork'])) {
  $errors = array();

  if (trim($_POST['period']) == '') {
    $errors[] = ['title' => 'Введите сроки работы'];
  }

  if (trim($_POST['title']) == '') {
    $errors[] = ['title' => 'Введите Должность'];
  }

  if (trim($_POST['description']) == '') {
    $errors[] = ['title' => 'Введите описание работы'];
  }
  

  if (empty($errors)) {
    
    $job = R::dispense('jobs');
    $job->period = htmlentities($_POST['period']);
    $job->title = htmlentities($_POST['title']);
    $job->description = htmlentities($_POST['description']);

    R::store($job);
    header('Location: ' . HOST . 'experience-edit');
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
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_scripts.tpl";