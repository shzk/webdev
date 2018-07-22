<?php

function isAdmin(){
	$result = false;
	if ( isset($_SESSION['logged_user']) && $_SESSION['login'] == 1 ) {
		if ($_SESSION['role'] == 'admin') {
				$result = true;
		}
	}
	return $result;
}

function isLoggedIn(){
	$result = false;
	if ( isset($_SESSION['logged_user']) && $_SESSION['login'] == 1 ) {
		$result = true;
	}
	return $result;
}

function rus_date() {
	// Перевод
	$translate = array(
		"am" => "дп",
		"pm" => "пп",
		"AM" => "ДП",
		"PM" => "ПП",
		"Monday" => "Понедельник",
		"Mon" => "Пн",
		"Tuesday" => "Вторник",
		"Tue" => "Вт",
		"Wednesday" => "Среда",
		"Wed" => "Ср",
		"Thursday" => "Четверг",
		"Thu" => "Чт",
		"Friday" => "Пятница",
		"Fri" => "Пт",
		"Saturday" => "Суббота",
		"Sat" => "Сб",
		"Sunday" => "Воскресенье",
		"Sun" => "Вс",
		"January" => "Января",
		"Jan" => "Янв",
		"February" => "Февраля",
		"Feb" => "Фев",
		"March" => "Марта",
		"Mar" => "Мар",
		"April" => "Апреля",
		"Apr" => "Апр",
		"May" => "Мая",
		"May" => "Мая",
		"June" => "Июня",
		"Jun" => "Июн",
		"July" => "Июля",
		"Jul" => "Июл",
		"August" => "Августа",
		"Aug" => "Авг",
		"September" => "Сентября",
		"Sep" => "Сен",
		"October" => "Октября",
		"Oct" => "Окт",
		"November" => "Ноября",
		"Nov" => "Ноя",
		"December" => "Декабря",
		"Dec" => "Дек",
		"st" => "ое",
		"nd" => "ое",
		"rd" => "е",
		"th" => "ое"
	);
 	// если передали дату, то переводим ее
	if (func_num_args() > 1) {
		$timestamp = func_get_arg(1);
		return strtr(date(func_get_arg(0), $timestamp), $translate);
	} else {
	// иначе текущую дату
		return strtr(date(func_get_arg(0)), $translate);
	}
}

function commentNumber ($num) {
    //Оставляем две последние цифры от $num
	$number = substr($num, -2);
    //Если 2 последние цифры входят в диапазон от 11 до 14
    //Тогда подставляем окончание "ЕВ" 
	if($number > 10 and $number < 15)
	{
		$term = "ев";
	}
	else
	{ 
		$number = substr($number, -1);
		if($number == 0) {$term = "ев";}
		if($number == 1 ) {$term = "й";}
		if($number > 1 ) {$term = "я";}
		if($number > 4 ) {$term = "ев";}
	}
	echo  $num.' комментари'.$term;
}

// Adjusting text encoding
function adopt($text) {
	return '=?UTF-8?B?'.base64_encode($text).'?=';
}
?>