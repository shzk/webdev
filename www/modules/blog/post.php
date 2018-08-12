<?php

// $postID = $_GET['id'];
// $post = R::load('posts', $postID);

$sqlAuthor = '
	SELECT 	
		posts.id, posts.title, posts.text, posts.post_img, posts.date_time, posts.author_id, posts.cat,
		users.name, users.secondname, 
		categories.cat_title 
	FROM posts 

	INNER JOIN users 
	ON posts.author_id = users.id 

	INNER JOIN categories 
	ON posts.cat = categories.id

	WHERE posts.id =' . $_GET['id'] . ' LIMIT 1';
$post = R::getAll( $sqlAuthor );
$post = $post[0];
// echo "<pre>";
// print_r ($post);
// echo "</pre>";

$sqlComments = 'SELECT comments.text, comments.date_time, comments.user_id, users.name, users.secondname, users.avatar_small FROM comments INNER JOIN users ON comments.user_id = users.id WHERE comments.post_id = ' . $_GET['id'] ;
$comments = R::getAll( $sqlComments );



$errors = array();
if (isset($_POST['addComment'])) {
  if ( trim($_POST['commentText']) == '') {
		$errors[] = ['title' => 'Введите текст комментария' ];
  }
  if ( empty($errors)) {
		$comment = R::dispense('comments');
		$comment->postId = htmlentities($_GET['id']);
		$comment->userId = htmlentities($_SESSION['logged_user']['id']);
		$comment->text = htmlentities($_POST['commentText']);
		$comment->dateTime = R::isoDateTime();
		R::store($comment);
		header('Location: ' . HOST . "blog/post?id=" . $_GET['id']);
		exit();
	}
}

// готовим контент для центральной части
ob_start();
include ROOT . "templates/blog/blog-post.tpl";
$content = ob_get_contents();
ob_end_clean();

// выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_scripts.tpl";
include ROOT . "templates/_parts/_footer.tpl";
