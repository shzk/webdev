<?php
//$page_title is on line #23
// $postID = $_GET['id'];
// $post = R::load('posts', $postID);

$sqlWork = '
	SELECT 	
		works.id, works.title, works.summary, works.result, works.work_img, works.work_img_small,works.date, works.author_id, works.category, works.time, works.pages, works.price, works.technologies, works.link, works.github,
		users.name, users.secondname, 
		work_categories.w_cat_title 
	FROM works 

	INNER JOIN users 
	ON works.author_id = users.id 

	INNER JOIN work_categories 
	ON works.category = work_categories.id

	WHERE works.id =' . $_GET['id'] . ' LIMIT 1';
$work = R::getAll( $sqlWork );
$work = $work[0];

$page_title = "Денис Токарев - Работа - {$work['title']}";

$linksSql = 'SELECT works.id, works.title FROM works';
$link_works = R::getAll( $linksSql );

foreach ($link_works as $link_work) {
	if ($link_work['id'] == $work['id']) {
		$current_work_id = $link_work['id'];
	}
}

for ($i = 0; $i < count($link_works); $i++) {
	if ($link_works[$i]['id'] < $work['id']) {
		$prev_work_id = $link_works[$i]['id'];
		$prev_work_title = $link_works[$i]['title'];
	}
}

for ($i = count($link_works)-1; $i >= 0; $i--) {
	if ($link_works[$i]['id'] > $work['id']) {
		$next_work_id = $link_works[$i]['id'];
		$next_work_title = $link_works[$i]['title'];
	}
}


// готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_work_header.tpl";
include ROOT . "templates/works/single.tpl";
$content = ob_get_contents();
ob_end_clean();

// выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/work-template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_scripts.tpl";