<div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <form action="<?=HOST?>blog/category-edit?id=<?=$category->id?>" method="POST">
          <h1>Редактировать категорию</h1>
          <section class="add-post">
            <div class="add-post__title">Название</div>
            <input class="form-full-width" type="text" name="catTitle" placeholder="Введите название категории" value="<?=$category->title?>" >
          </section>
          <section class="add-post">
            <input type="submit" name="catEdit" class="button button-save" value="Редактировать" >
            <a class="button button-delete" href="<?=HOST?>blog/categories"> Отмена </a>
          </section>
          </form>
        </div>
        <div class="col"></div>
      </div>
    </div>
  </div>