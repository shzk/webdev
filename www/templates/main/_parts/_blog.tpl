<div class="container">
  <div class="blog-title">
    <h1>Новые записи в
      <a class="cards-link" href="<?=HOST?>blog">блоге</a>
    </h1>
  </div>
  <div class="row blog-cards">
    <?php foreach ($posts as $post) { ?>
      <div class="col-md-6 col-xl-4">
        <div class="card card-post">
          <img class="card__img card-post__img" src="<?=HOST?>usercontent/blog/<?=$post->post_img_small?>" alt="<?=$post->title?>" />
          <h2 class="card__title"><?=$post->title?></h2>
          <a class="button button-regular" href="<?HOST?>blog/post?id=<?=$post->id?>"> Читать </a>
        </div>
      </div>
    <?php } ?>
  </div>
</div>