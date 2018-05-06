<div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h1>Редактировать профиль</h1>
          <form action="<?=HOST?>profile-edit" method="POST">
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
            </section>

          </form>
          <!-- <section class="add-post">
            <div class="add-post__title">Информация на главной</div>
            <textarea class="form-message" name="userInfo" placeholder="Информация на главной">Я веб разработчик из Казани. Мне 28 лет. &lt;br&gt;Занимаюсь разработкой современных сайтов и приложений. Мне нравится делать интересные и современные проекты.</textarea>
          </section> -->
        </div>
        <div class="col"></div>
      </div>
      <!-- <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h2 class="about-block-title">Технологии</h2>
          <section class="add-skills">
            <div class="skill-field">
              <div class="add-post__title">HTML5</div>
              <input class="form-scils" type="text" name="html-scils" placeholder="50"/><span> &#37;</span>
            </div>
            <div class="skill-field">
              <div class="add-post__title">CSS3</div>
              <input class="form-scils" type="text" name="css-scils" placeholder="50"/><span> &#37;</span>
            </div>
            <div class="skill-field">
              <div class="add-post__title">JS</div>
              <input class="form-scils" type="text" name="js-scils" placeholder="50"/><span> &#37;</span>
            </div>
            <div class="skill-field">
              <div class="add-post__title">jQuery</div>
              <input class="form-scils" type="text" name="jquery-scils" placeholder="50"/><span> &#37;</span>
            </div>
          </section>
          <section class="add-skills">
            <div class="skill-field">
              <div class="add-post__title">PHP</div>
              <input class="form-scils" type="text" name="php-scils" placeholder="50"/><span> &#37;</span>
            </div>
            <div class="skill-field">
              <div class="add-post__title">MySql</div>
              <input class="form-scils" type="text" name="mysql-scils" placeholder="50"/><span> &#37;</span>
            </div>
          </section>
          <section class="add-skills">
            <div class="skill-field">
              <div class="add-post__title">Git</div>
              <input class="form-scils" type="text" name="git-scils" placeholder="50"/><span> &#37;</span>
            </div>
            <div class="skill-field">
              <div class="add-post__title">Gulp</div>
              <input class="form-scils" type="text" name="gulp-scils" placeholder="50"/><span> &#37;</span>
            </div>
            <div class="skill-field">
              <div class="add-post__title">Bower</div>
              <input class="form-scils" type="text" name="bower-scils" placeholder="50"/><span> &#37;</span>
            </div>
            <div class="skill-field">
              <div class="add-post__title">WebPack</div>
              <input class="form-scils" type="text" name="webpack-scils" placeholder="50"/><span> &#37;</span>
            </div>
          </section>
        </div>
        <div class="col"></div>
      </div> -->
      <!-- <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h2 class="about-block-title">Опыт работы</h2>
          <div class="work-item--admin"><a class="button button-delete" href="#"> Удалить </a>
            <div class="work-item__date">февраль 2017  — по настоящее время</div>
            <div class="work-item-profile"><span class="work-item-profile__name">Frontend разработчик, Вконтактe, mail.ru group</span></div>
            <div class="work-item__message">Работы в команде Вконтакте. Работал в команде над обновление сервиса Музыка, работа над видео разделом. Создание видеоплеера. Создание кроссбраузерных компонентов. Работа над оптимизацией скорости загрузки медиа контента.</div>
          </div>
          <div class="work-item--admin"><a class="button button-delete" href="#"> Удалить </a>
            <div class="work-item__date">сентябрь 2015 — январь 2017</div>
            <div class="work-item-profile"><span class="work-item-profile__name">Разработчик интерфейсов, Яндекс</span></div>
            <div class="work-item__message">Работы в проекте Яндекс Музыка. Создание новых разделов сервиса. Оптимизация и создание новых компонентов платформы.</div>
          </div>
          <div class="work-item--admin"><a class="button button-delete" href="#"> Удалить </a>
            <div class="work-item__date">март 2013 — август 2015</div>
            <div class="work-item-profile"><span class="work-item-profile__name">Веб-разработчик, Cloud studio</span></div>
            <div class="work-item__message">Frontend и Backend для клиентских проектов студии. Работа над студийной CMS для интернет магазинов. Участие в разработке CRM системы “Sky CRM”. Стек используемых технологий: Git, JS, Angular.</div>
          </div>
        </div>
        <div class="col"></div>
      </div> -->
      <!-- <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h2 class="about-block-title">Добавить новое место</h2>
          <form>
            <div class="comment-user">
              <section class="add-post">
                <div class="add-post__title">Период</div>
                <input class="form-full-width" type="text" name="work-period" placeholder="Введите даты начала и окончания работы"/>
              </section>
              <section class="add-post">
                <div class="add-post__title">Название должности</div>
                <input class="form-full-width" type="text" name="work-name" placeholder="Введите название должности"/>
              </section>
              <section class="add-post add-work">
                <div class="add-post__title">Описание работы, должностные обязанности, достигнутые результат</div>
                <textarea class="form-message" name="work-description" placeholder="Напишите интересное краткое содержательное описание"></textarea><a class="button button-save" href="#"> Добавить </a>
              </section>
            </div>
          </form>
        </div>
        <div class="col"></div>
      </div> -->
    </div>
  </div>