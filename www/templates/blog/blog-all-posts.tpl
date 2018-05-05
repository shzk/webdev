  <div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col">
          <a class="button button-edit" href="#"> Добавить пост </a>
          <h1>Блог вебразработчика</h1>
        </div>
      </div>
      <div class="row">
        <?php foreach ($blogPosts as $post) {
    include "blog-card.tpl";
}?>
      </div>
    </div>
  </div>
