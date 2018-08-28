<?php

if(!isAdmin()) {
  header("Location: ". HOST);
  die;
}

$errors = array();
$work = R::load('works', $_GET['id']);
$work_categories = R::findAll('work_categories');

// Если форма отправлена - создаем пост
if (isset($_POST['workUpdate'])) {
  if (trim($_POST['workTitle']) == '') {
  $errors[] = ['title' => 'Введите название работы'];
  }
  if (trim($_POST['workSummary']) == '') {
  $errors[] = ['title' => 'Введите краткое описание работы'];
  }
  if (empty($errors)) {
		$work->title = htmlentities($_POST['workTitle']);
		$work->authorId = $currentUser['id'];
		$work->category = htmlentities($_POST['workCat']);
		$work->date = R::isoDateTime();
		$work->summary = $_POST['workSummary'];
		$work->result = $_POST['workResult'];
		$work->technologies = $_POST['workTechnologies'];
		$work->link = htmlentities($_POST['workLink']);
		$work->github = htmlentities($_POST['workGithub']);
		$work->time = htmlentities($_POST['workTime']);
		$work->pages = htmlentities($_POST['workPages']);
    $work->price = htmlentities($_POST['workPrice']);

    if(isset($_FILES["workImg"]["name"]) && $_FILES["workImg"]["tmp_name"] != '') {
      // Write file image params in variables
			$fileName = $_FILES["workImg"]["name"];
			$fileTmpLoc = $_FILES["workImg"]["tmp_name"];
			$fileType = $_FILES["workImg"]["type"];
			$fileSize = $_FILES["workImg"]["size"];
			$fileErrorMsg = $_FILES["workImg"]["error"];
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
      
      $postImgFolderLocation = ROOT . 'usercontent/work/';
      
			// Перемещаем загруженный файл в нужную директорию
			$uploadfile = $postImgFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);
			if ($moveResult != true) {
				$errors[] = 'File upload failed';
			}
			include_once( ROOT . "/libs/image_resize_imagick.php");
			
			$target_file =  $postImgFolderLocation . $db_file_name;
			$resized_file = $postImgFolderLocation . $db_file_name;
			$wmax = 920;
			$hmax = 530;
			$img = createThumbnailBig($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);
			$work->workImg = $db_file_name;
			$target_file =  $postImgFolderLocation . $db_file_name;
			$resized_file = $postImgFolderLocation . "360-" . $db_file_name;
			$wmax = 360;
			$hmax = 200;
			$img = createThumbnailCrop($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);
			$work->workImgSmall = "360-" . $db_file_name;
    }
    
    if ( @$_POST['deleteImg'] == "on" ) {
      $imgPathSmall = ROOT . 'usercontent/work/' . $work->work_img_small;
      $imgPathBig = ROOT . 'usercontent/work/' . $work->work_img;
        if ( file_exists($imgPathSmall) ){
          unlink($imgPathSmall);
        }
        if ( file_exists($imgPathBig) ){
          unlink($imgPathBig);
        }
        $work->workImg = "";
        $work->workImgSmall = "";
		}
		
    R::store($work);
    header('Location: ' . HOST . "works/work-edit?id=".$work->id);
    exit();
  }
}



// готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/works/work-edit.tpl";
$content = ob_get_contents();
ob_end_clean();

// выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_scripts.tpl";