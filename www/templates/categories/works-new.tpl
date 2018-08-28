<div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <form action="<?=HOST?>category-works-new" method="POST">
          <h1>Создать категорию</h1>
          <section class="add-post">
            <div class="add-post__title">Название</div>
            <input class="form-full-width" type="text" name="catTitle" placeholder="Введите название категории"/>
          </section>
          <section class="add-post">
            <input type="submit" name="catNew" class="button button-save" value="Добавить" >
            <a class="button button-delete" href="<?=HOST?>categories"> Отмена </a>
          </section>
          </form>
        </div>
        <div class="col"></div>
      </div>
    </div>
  </div>