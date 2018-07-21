<?php
$errors = array();
$success = false;
$recoveryCode = false;
if ( !empty($_GET['email']) ) {
	// Выбор в БД юзера с указанным email
	$user = R::findOne('users', 'email = ?', array( $_GET['email']) );
	if ($user) {
		$user->recovery_code_times--; // recovery_code_times = 2
		R::store($user);
		// Проверка верности кода
		if ( $user->recovery_code == $_GET['code']) {
			if ( $user->recovery_code_times < 1 ) {
				echo "User recovery code tries - limited";
				echo "<br><br>";
				echo "<a href='" . HOST . "'>Вернуться на главную</a>";
				die;
			}
			
			$recoveryCode = true;
		} else {
			$recoveryCode = false;
		}
	
	} else {
		echo "Пользователь с таким email не найден";
		die; 
	}
} elseif( !empty($_POST) ) { 
	// Если форма установки нового пароля для пользователя отправлена
	// Ищем пользователя по Email
	$user = R::findOne('users', 'email = ?', array($_POST['resetemail']));
	$user->recovery_code_times--; // recovery_code_times = 1
	R::store($user);
	$user = R::findOne('users', 'email = ?', array($_POST['resetemail']));
	if ( $user ) {
		if ( $user->recovery_code_times < 1 ) {
			die;
		}
		// Проверяем onetimecode
		if ( $user->recovery_code == $_POST['onetimecode']) { 
			// Если все верно - ставим новый пароль и убиваем код
			$user->password = password_hash($_POST['resetpassword'], PASSWORD_DEFAULT);
			// в любом случае убиваем код
			$user->recovery_code_times = 0; // recovery_code_times = 0
			R::store($user);
			$success = true;
		}
	}
} else {
	header("Location: " . HOST ."lost-password");
	die;
}
// Готовим контент для центральной части
ob_start();
include ROOT . "templates/login/set-new-password.tpl";
$content = ob_get_contents();
ob_end_clean();
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/login/login-page.tpl";
include ROOT . "templates/_parts/_scripts.tpl";