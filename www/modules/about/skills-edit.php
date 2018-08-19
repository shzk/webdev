<?php
if(!isAdmin()) {
  header("Location: ". HOST);
  die;
}
$skills = R::findOne('skills', 1);

if (isset($_POST['skillsEdit'])) {
  $errors = array();

  if (empty($errors)) {
    //Allright, update!
    $skills->html5 = htmlentities($_POST['html5']);
    $skills->css3 = htmlentities($_POST['css3']);
    $skills->javascript = htmlentities($_POST['javascript']);
    $skills->jquery = htmlentities($_POST['jquery']);
    $skills->php = htmlentities($_POST['php']);
    $skills->mysql = htmlentities($_POST['mysql']);
    $skills->git = htmlentities($_POST['git']);
    $skills->gulp = htmlentities($_POST['gulp']);
    $skills->bower = htmlentities($_POST['bower']);
    $skills->webpack = htmlentities($_POST['webpack']);
    
    R::store($skills);
    header('Location: ' . HOST . 'about');
    exit();
  }
}

// готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/about/skills-edit.tpl";
$content = ob_get_contents();
ob_end_clean();

// выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_scripts.tpl";
include ROOT . "templates/_parts/_footer.tpl";
