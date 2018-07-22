<div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <a class="button button-edit" href="#"> Редактировать </a>
          <h1 class="full-post__title"><?=$post->title?></h1><span class="full-post__author">Емельян Казаков</span>
          <a class="full-post__link" href="#">Путешествия</a>
          <span class="full-post__date">16 Марта 2017</span>
          <a class="full-post__link" href="#">2 комментария</a>
          <article>
            <img class="full-post__img" src="<?=HOST?>usercontent/blog/<?=$post->post_img?>" alt="<?=$post->title?>"/>
            <p><?=$post->text?></p>
          </article>
          <div class="full-post__next-prew"><a class="button button-regular" href="#"> <span class="button__small-fa-icon"><i class="fas fa-arrow-left"></i></span>Назад  </a><a class="button button-regular" href="#"> Вперед  <span class="button__small-fa-icon"><i class="fas fa-arrow-right"></i></span></a>
          </div>

          <?php 	if ( count($comments) > 0) {  ?>
            <h2 id="comments"><?php commentNumber( count($comments) ); ?></h2>
            <?php foreach ($comments as $comment) {
              include "blog-comment.tpl";
            }
          }?>
        
          <?php 
            if (isLoggedIn()) { ?>
              <div class="comment-post__title">Оставить комментарий</div>
              <div class="comment-post">
                <div class="avatar avatar-small">
                  <img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatarSmall']?>" alt="<?=$_SESSION['logged_user']['name'] . ' ' . $_SESSION['logged_user']['secondname']?>"/>
                </div>
                <div class="comment-post__author">
                  <?=$_SESSION['logged_user']['name']?> 
                  <?=$_SESSION['logged_user']['secondname']?>
                </div>
                <form class="comment-post__form" 
                  method="POST" 
                  action="<?=HOST?>blog/post?id=<?=$post['id']?>" > 
                  <?php require ROOT. "templates/_parts/_errors.tpl" ?>
                  <textarea class="form-message" 
                    name="commentText" 
                    placeholder="Присоединиться к обсуждению..."></textarea>
                  <input type="submit" name="addComment" class="button button-regular" value="Опубликовать">
                </form>
              </div>
              
            <?php } else { ?>
              <div class="no-auth">
                <div class="no-auth__title"> 
                  <a href="<?=HOST?>login">Войдите</a> или 
                  <a href="<?=HOST?>registration">зарегистрируйтесь</a><br/>
                  чтобы оставить комментарий </div>
              </div>
				  <?php }?>


        </div>
        <div class="col"></div>
      </div>
    </div>
  </div>
