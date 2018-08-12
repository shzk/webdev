<div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <form action="<?=HOST?>blog/category-delete?id=<?=$category->id?>" method="POST">
          <h1>Удалить категорию</h1>
          Вы действительно хотите удалить категорию: <strong><?=$category->title?></strong> с id: <strong><?=$category->id?></strong>?

          <section class="add-post">
            <input type="submit" name="catDelete" class="button button-save" value="Удалить" >
            <a class="button button-delete" href="<?=HOST?>blog/categories"> Отмена </a>
          </section>
          
          </form>
        </div>
        <div class="col"></div>
      </div>
    </div>
  </div>