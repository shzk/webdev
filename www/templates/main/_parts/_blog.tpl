<div class="container">
  <div class="blog-title">
    <h1>Новые записи в
      <a class="cards-link" href="<?=HOST?>blog">блоге</a>
    </h1>
  </div>
  <div class="row blog-cards">
    <?php foreach ($posts as $post) {
        include (ROOT."templates/blog/blog-card.tpl");
      }?>
  </div>
</div>