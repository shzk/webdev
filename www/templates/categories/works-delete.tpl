<div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <form action="<?=HOST?>category-works-delete?id=<?=$category->id?>" method="POST">
          <h1>Удалить категорию</h1>
          Вы действительно хотите удалить категорию: <strong><?=$category->w_cat_title?></strong> с id: <strong><?=$category->id?></strong>?

          <section class="add-post">
            <input type="submit" name="catDelete" class="button button-save" value="Удалить" >
            <a class="button button-delete" href="<?=HOST?>categories"> Отмена </a>
          </section>
          
          </form>
        </div>
        <div class="col"></div>
      </div>
    </div>
  </div>