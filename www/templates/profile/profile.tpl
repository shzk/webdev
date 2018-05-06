<div class="full-post">
    <div class="container">
        <div class="row">
            <div class="col"></div>
            <div class="col-10">
                <h1>Профиль</h1>
                <section class="add-post">
                    <div class="add-post__title">Имя, Фамилия</div>
                    <div><?=$currentUser->name?> <?=$currentUser->secondname?></div>
                </section>

                <section class="add-post">
                    <div class="add-post__title">Email</div>
                    <div><?=$currentUser->email?></div>
                </section>

                <section class="add-post">
                    <div class="add-post__title">Страна, Город</div>
                    <div><?=$currentUser->country?>, <?=$currentUser->city?></div>
                </section>

                <section class="add-post">
                  <a class="button button-regular" href="<?=HOST?>profile-edit">Редактировать<a/>
                </section>

                <!-- 
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
                    <input type="file" id="file" name="file" style="display:none;"/>
                  </label>
                  <input class="form-download__file-name" id="value" type="text" value="Файл не выбран" disabled="disabled"/>
                </div>
              </div>
              <div class="avatar avatar-big"><img src="/img/avatar-img/photo-big.jpg" alt=""/></div>
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
              <a class="button button-delete" href="/">Отмена</a>
            </section> -->

            </div>
            <div class="col"></div>
        </div>
    </div>
</div>