<?php

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

    if(isset($_FILES["avatar"]["name"]) && $_FILES["avatar"]["tmp_name"] != '') {
      // Write file image params in variables
			$fileName = $_FILES["avatar"]["name"];
			$fileTmpLoc = $_FILES["avatar"]["tmp_name"];
			$fileType = $_FILES["avatar"]["type"];
			$fileSize = $_FILES["avatar"]["size"];
			$fileErrorMsg = $_FILES["avatar"]["error"];
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);
			// Check file propertties on different conditions
			list($width, $height) = getimagesize($fileTmpLoc);
			if($width < 10 || $height < 10){
				$errors[] = 'That image has no dimensions';
			}
			$db_file_name = rand(100000000000,999999999999) . "." . $fileExt;
			if($fileSize > 4194304) {
				$errors[] = 'Your image file was larger than 4mb';
			} else if (!preg_match("/\.(gif|jpg|png)$/i", $fileName) ) {
				$errors[] = 'Your image file was not jpg, gif or png type';
			} else if ($fileErrorMsg == 1) {
				$errors[] = 'An unknown error occurred';
			}
			// Поверям установлен ли аватар у пользователя
			$avatar = $user['avatar'];
			$avatarFolderLocation = ROOT . 'usercontent/avatar/';
			// Если аватар уже установлен, то есть загружен ранее то удаляем файл аватара
			if($avatar != ""){
				$picurl = $avatarFolderLocation . $avatar; 	
				// Удаляем аватар
			    if (file_exists($picurl)) { unlink($picurl); }
			}
			// Перемещаем загруженный файл в нужную директорию
			$uploadfile = $avatarFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);
			if ($moveResult != true) {
				$errors[] = 'File upload failed';
			}
			include_once( ROOT . "/libs/image_resize_imagick.php");
			
			$target_file =  $avatarFolderLocation . $db_file_name;
			$resized_file = $avatarFolderLocation . $db_file_name;
			$wmax = 222;
			$hmax = 222;
			$img = createThumbnail($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);
			$user->avatar = $db_file_name;
			$target_file =  $avatarFolderLocation . $db_file_name;
			$resized_file = $avatarFolderLocation . "48-" . $db_file_name;
			$wmax = 48;
			$hmax = 48;
			$img = createThumbnail($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);
			$user->avatarSmall = "48-" . $db_file_name;
    }
    R::store($user);
    $_SESSION['logged_user'] = $user;
    $currentUser = $_SESSION['logged_user'];
    header('Location: ' . HOST . 'profile');
    exit();
  }
}

// готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/profile/profile-edit.tpl";
$content = ob_get_contents();
ob_end_clean();

// выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_scripts.tpl";
include ROOT . "templates/_parts/_footer.tpl";