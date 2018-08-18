<div class="full-post">
    <div class="container">
    <form action="<?=HOST?>about-edit" method="POST">
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h1>Редактировать - Обо Мне</h1>
          <section class="add-post">
            <div class="add-post__title">Имя, фамилия</div>
            <input class="form-full-width" type="text" name="userName" value="<?=$about->name?>"/>
          </section>
          <section class="add-post">
            <div class="add-post__title">Фотография</div>
            <div class="form-download">
              <div class="form-download__title">Изображение jpg или png, рекомендуемый размер 205 на 205 пикселей, вес до 2Мб.</div>
              <div class="form-download__container"> 
                <label class="form-download__btn">Выбрать файл
                  <input type="file" id="file" name="file" style="display:none;"/>
                </label>
                <input class="form-download__file-name" id="value" type="text" value="Файл не выбран" disabled="disabled"/>
              </div>
            </div>
            <div class="avatar avatar-big"><img src="/img/avatar-img/photo-big.jpg" alt=""/></div>
          </section>
          <section class="add-post">
            <div class="add-post__title">Информация на главной</div>
            <textarea class="form-message" name="userInfo"><?=$about->description?></textarea>
          </section>
          <section class="add-post">
            <div class="add-post__title">Что я умею</div>
            <textarea class="form-message" name="userSkills"><?=$about->skills?></textarea>
          </section>
          <section>
            <input type="submit" class="button button-save" value="Обновить" name="aboutEdit">
            <input type="submit" class="button button-delete" value="Отменить">
          </section>
        </div>
        <div class="col"></div>
        </form>
      </div>
    </div>
  </div>