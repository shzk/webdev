<div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h1>Редактировать профиль</h1>
          <form enctype="multipart/form-data" action="<?=HOST?>profile-edit" method="POST">
          <?php require ROOT."/templates/_parts/_errors.tpl"?> 
            <section class="add-post">
              <div class="add-post__title">Имя</div>
              <input class="form-full-width" type="text" name="name" value="<?=$currentUser->name?>"/>
            </section>

            <section class="add-post">
              <div class="add-post__title">Фамилия</div>
              <input class="form-full-width" type="text" name="secondname" value="<?=$currentUser->secondname?>"/>
            </section>

            <section class="add-post">
              <div class="add-post__title">Email</div>
              <input class="form-full-width" type="text" name="email" value="<?=$currentUser->email?>"/>
            </section>

            <section class="add-post">
              <div class="add-post__title">Фотография</div>
              <div class="form-download">
                <div class="form-download__title">Изображение jpg или png, рекомендуемый размер 205 на 205 пикселей, вес до 2Мб.</div>
                <div class="form-download__container"> 
                  <label class="form-download__btn">Выбрать файл
                    <input type="file" id="file" name="avatar" value="<?=$user['avatar']?>"/>
                    <!-- <input type="file" id="file" name="avatar" style="display:none;"/> -->
                  </label>
                  <!-- <input class="form-download__file-name" id="value" type="text" value="Файл не выбран" disabled="disabled"/> -->
                </div>
              </div>
              <div class="avatar avatar-big"><img src="<?=HOST?>usercontent/avatar/<?=$user['avatar']?>" alt=""/></div>
            </section>

            <section class="add-post">
              <div class="add-post__title">Страна</div>
              <input class="form-full-width" type="text" name="country" value="<?=$currentUser->country?>"/>
            </section>

            <section class="add-post">
              <div class="add-post__title">Email</div>
              <input class="form-full-width" type="text" name="city" value="<?=$currentUser->city?>"/>
            </section>

            <section class="add-post">
              <input class="button button-save" type="submit" name="profile-update" value="Сохранить"/>
              <a class="button button-delete" href="<?=HOST?>profile">Отмена</a>
            </section>

          </form>
          <!-- <section class="add-post">
            <div class="add-post__title">Информация на главной</div>
            <textarea class="form-message" name="userInfo" placeholder="Информация на главной">Я веб разработчик из Казани. Мне 28 лет. &lt;br&gt;Занимаюсь разработкой современных сайтов и приложений. Мне нравится делать интересные и современные проекты.</textarea>
          </section> -->
        </div>
        <div class="col"></div>
      </div>
    </div>
  </div>