  <div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col">
          <?php if (isAdmin()) { ?>
            <a class="button button-edit" href="<?HOST?>/blog/post-new"> Добавить пост </a>
          <?php } ?>
          <h1>Блог вебразработчика</h1>
        </div>
      </div>
      <div class="row">
      <?php
      ?>
      <?php foreach ($posts as $post) {
        include "blog-card.tpl";
      }?>
      </div>
    </div>
  </div>
