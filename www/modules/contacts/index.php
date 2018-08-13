<?php
$contacts = R::load('contacts', 1);


if (isset($_POST['newMessage'])) {
  $errors = array();

  if (trim($_POST['email']) == '') {
    $errors[] = ['title' => 'Введите Email'];
  }

  if (empty($errors)) {
    $message = R::dispense('messages');
    $message->name = htmlentities($_POST['name']);
    $message->email = htmlentities($_POST['email']);
    $message->message = htmlentities($_POST['message']);

    if(isset($_FILES["file"]["name"]) && $_FILES["file"]["tmp_name"] != '') {
      // Write file image params in variables
			$fileName = $_FILES["file"]["name"];
			$fileTmpLoc = $_FILES["file"]["tmp_name"];
			$fileType = $_FILES["file"]["type"];
			$fileSize = $_FILES["file"]["size"];
			$fileErrorMsg = $_FILES["file"]["error"];
			$kaboom = explode(".", $fileName);
      $fileExt = end($kaboom);
      
			// Check file propertties on different conditions
			$db_file_name = rand(100000000000,999999999999) . "." . $fileExt;
			if($fileSize > 4194304) {
				$errors[] = 'Your file was larger than 4mb';
			} else if (!preg_match("/\.(jpg|png|pdf|doc|docx)$/i", $fileName) ) {
				$errors[] = 'Your file was not jpg, png, doc or docx type';
			} else if ($fileErrorMsg == 1) {
				$errors[] = 'An unknown error occurred';
      }
      
      $postImgFolderLocation = ROOT . 'usercontent/upload_files/';
      
			// Перемещаем загруженный файл в нужную директорию
			$uploadfile = $postImgFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);
			if ($moveResult != true) {
				$errors[] = 'File upload failed';
      }
      
      $message->message_file = $db_file_name;
    }

    R::store($message);
    header('Location: ' . HOST . 'contacts');
    exit();
  }
}

// готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/contacts/contacts.tpl";
$content = ob_get_contents();
ob_end_clean();

// выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_scripts.tpl";
include ROOT . "templates/_parts/_footer.tpl";
