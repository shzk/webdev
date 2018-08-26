<div class="full-post">
    <div class="container">
      <div class="row">
        <form action="<?=HOST?>works/work-new" method="POST" enctype="multipart/form-data">
        <div class="col"></div>
        <div class="col-10">
          <h1>Добавить работу</h1>
          <?php include(ROOT . 'templates/_parts/_errors.tpl')?>
          <section class="add-post">
            <div class="add-post__title">Название</div>
            <input class="form-full-width" type="text" name="workTitle" placeholder="Название работы" <?php if(@$_POST['workTitle'] != "") {?> value="<?=$_POST['workTitle']?>" <?php } ?>/>
          </section>
          <section class="add-post">
            <div class="add-post__title">Категория</div>
            <select name="workCat">
              <?php foreach ($work_categories as $cat) { ?>
                <option value="<?=$cat->id?>"><?=$cat->w_cat_title?></option>
              <?php } ?>
            </select>
          </section>
          <section class="add-post">
            <div class="add-post__title">Изображение</div>
            <div class="form-download">
              <div class="form-download__title">Изображение jpg или png, размером больше чем 100х100 пикселей, и весом до 2Мб.</div>
              <div class="form-download__container">
                <fieldset>
                    <input type="file" name="workImg" id="workImg" class="inputfile" data-multiple-caption="{count} файлов выбрано" multiple style="display:none;"/>
                    <label class="form-download__btn" for="workImg">Выбрать файл</label> <span></span>
                  </fieldset>
              </div>
            </div>
          </section>
          <section class="add-post">
            <div class="add-post__title">Кратко о проекте</div>
            <textarea id="ck" class="form-message editor" name="workSummary" placeholder="Описание работы"></textarea>
          </section>
          <section class="add-post">
            <div class="add-post__title">Цифры проекта</div>
            <input class="form-third" type="text" name="workTime" placeholder="Длительность работы"/>
            <input class="form-third" type="text" name="workPages" placeholder="Количество страниц"/>
            <input class="form-third" type="text" name="workPrice" placeholder="Бюджет проекта"/>
          </section>
          <section class="add-post">
            <div class="add-post__title">Результат</div>
            <textarea id="ck" class="form-message editor" name="workResult" placeholder="Результат работы"></textarea>
          </section>
          <section class="add-post">
            <div class="add-post__title">Технологии в проекте</div>
            <textarea id="ck" class="form-message editor" name="workTechnologies" placeholder="Технологии, списком ul"></textarea>
          </section>
          <section class="add-post">
            <div class="add-post__title">Ссылки на проект</div>
            <input class="form-half" type="text" name="workLink" placeholder="Ссылка на проект"/>
            <input class="form-half" type="text" name="workGithub" placeholder="Ссылка на github"/>

          </section>
          <section class="add-post">
            <input type="submit" name="workNew" class="button button-save" value="Сохранить" >
            <a class="button button-delete" href="#"> Отмена </a>
          </section>
        </div>
        <div class="col"></div>
        </form>
      </div>
    </div>
  </div>