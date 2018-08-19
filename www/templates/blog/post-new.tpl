<div class="full-post">
    <div class="container">
      <div class="row">
        <form action="<?=HOST?>blog/post-new" method="POST" enctype="multipart/form-data">
        <div class="col"></div>
        <div class="col-10">
          <h1>Добавить пост</h1>
          <?php include(ROOT . 'templates/_parts/_errors.tpl')?>
          <section class="add-post">
            <div class="add-post__title">Название</div>
            <input class="form-full-width" type="text" name="postTitle" placeholder="Введите название записи"/>
          </section>
          <section class="add-post">
            <div class="add-post__title">Категория</div>
            <select name="postCat">
              <?php foreach ($categories as $cat) { ?>
                <option value="<?=$cat->id?>"><?=$cat->cat_title?></option>
              <?php } ?>
            </select>
          </section>
          <section class="add-post">
            <div class="add-post__title">Изображение</div>
            <div class="form-download">
              <div class="form-download__title">Изображение jpg или png, размером больше чем 100х100 пикселей, и весом до 2Мб.</div>
              <div class="form-download__container"> 
                <!-- <label class="form-download__btn">Выбрать файл
                  <input type="file" id="file" name="postImg" style="display:none;"/>
                </label>
                <input class="form-download__file-name" id="value" type="text" value="Файл не выбран" disabled="disabled"/> -->
                <fieldset>
                    <input type="file" name="postImg" id="postImg" class="inputfile" data-multiple-caption="{count} файлов выбрано" multiple style="display:none;"/>
                    <label class="form-download__btn" for="postImg">Выбрать файл</label> <span></span>
                  </fieldset>
              </div>
            </div>
          </section>
          <section class="add-post">
            <div class="add-post__title">Содержание</div>
            <textarea id="ck" class="form-message" name="postText" placeholder="Введите текст записи"></textarea>
            <input type="submit" name="postNew" class="button button-save" value="Сохранить" >
            <a class="button button-delete" href="#"> Отмена </a>
          </section>
        </div>
        <div class="col"></div>
        </form>
      </div>
    </div>
  </div>