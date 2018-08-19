<div class="full-post">
    <div class="container">
    <form action="<?=HOST?>about-edit" method="POST" enctype="multipart/form-data">
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h1>Редактировать - Обо Мне</h1>
          <?php include(ROOT . 'templates/_parts/_errors.tpl')?>
          <section class="add-post">
            <div class="add-post__title">Имя, фамилия</div>
            <input class="form-full-width" type="text" name="userName" value="<?=$about->name?>"/>
          </section>
          <section class="add-post">
            <div class="add-post__title">Фотография</div>
            <div class="form-download">
              <div class="form-download__title">Изображение jpg или png, рекомендуемый размер 205 на 205 пикселей, вес до 2Мб.</div>
              <div class="form-download__container"> 
                <input type="file" id="avatar" name="avatar" style="display:none;" class="inputfile"/>
                <label class="form-download__btn" for="avatar">Выбрать файл</label>
                <span></span>
              </div>
            </div>
            <div class="avatar avatar-big">
            <?php if($about->photo != '') {
              $photo = HOST.'usercontent/about/'.$about->photo;
            } else {
              $photo = '/img/avatar-img/photo-big.jpg';
            }?>
              <img src="<?=$photo?>" alt=""/>
            </div>
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
            <a href="<?=HOST?>about" class="button button-delete">Отменить</a>
          </section>
        </div>
        <div class="col"></div>
        </form>
      </div>
    </div>
  </div>