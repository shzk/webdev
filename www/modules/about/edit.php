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

  

  if (empty($errors)) {
    //Allright, update!
    $about->name = htmlentities($_POST['userName']);
    $about->description = $_POST['userInfo'];

    if ( isset($_FILES['avatar']['name']) && $_FILES['avatar']['tmp_name'] != "" ) {
			
			// Write file image params in variables
			$fileName = $_FILES['avatar']['name'];
			$fileTmpLoc = $_FILES['avatar']['tmp_name'];
			$fileType = $_FILES['avatar']['type'];
			$fileSize = $_FILES['avatar']['size'];
			$fileErrorMsg = $_FILES['avatar']['error'];
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);

			// Check file properties on different conditions
			list($width, $height) = getimagesize($fileTmpLoc);
			if($width < 10 || $height < 10) {
				$errors[] = ['title' => 'That image has no dimensions'];
			}
			$db_file_name = rand(100000000000, 999999999999) . "." . $fileExt;
			if($fileSize > 4194304) {
				$errors[] = ['title' => 'Your image file was larger than 4 mb'];
			} else if (!preg_match("/\.(gif|jpg|png)$/i", $fileName)) {
				$errors[] = ['title' => 'Your image file was not jpg, gif or png type'];
			} else if ($fileErrorMsg == 1) {
				$errors[] = ['title' => 'An unknown error occured'];	
			} 

			$avatar = $about->photo;
			$avatarFolderLocation = ROOT . 'usercontent/about/';

			if ($avatar != "") {
				$picurl = $avatarFolderLocation . $avatar;
				if (file_exists($picurl)) { unlink($picurl); }
			}

			$uploadfile = $avatarFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);

			if ($moveResult != true) {
				$errors[] = ['title' => 'File upload failed'];
			}

			include_once( ROOT . '/libs/image_resize_imagick.php');
			$target_file = $avatarFolderLocation . $db_file_name;
			$resized_file = $avatarFolderLocation . $db_file_name;
			$wmax = 222;
			$hmax = 222;
			$img = createThumbnail($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);

			$about->photo = $db_file_name;


		} 
    
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
