<div class="container about-resume">
    <div class="row resume-wrap">
      <div class="col-md-4 col-lg-3 resume-avatar">
        <div class="avatar avatar-big">
        <?php if($about->photo != '') {
              $photo = HOST.'usercontent/about/'.$about->photo;
            } else {
              $photo = '/img/avatar-img/photo-big.jpg';
            }?>
        <img src="<?=$photo?>" alt=""/>
        </div>
      </div>
      <div class="col-md-8 col-lg-9 resume-content">
        <div class="resume-content--text">
          <h1><?=$about->name?></h1>
          <p><?=$about->description?></p>
          <h3>Что я умею</h3>
          <p><?=$about->skills?></p>
          <?php if (isAdmin()) { ?>
              <a class="button button-edit" href="<?=HOST?>about-edit"> Редактировать </a>
          <?php } ?>
        </div>
      </div>
    </div>
  </div>
  <div class="about-skills">
    <div class="container">
      <div class="row">
        <div class="col-md-4 col-lg-3"></div>
        <div class="col-md-8 col-lg-9">
          <div class="header_skills">Технологии
            <p>Которые использую в работе</p>
          </div>
        </div>
      </div>
      <div class="row row--skills">
        <div class="col-md-4 col-lg-3 d-flex">
          <div class="skills_title justify-content-center align-self-center"> Frontend</div>
        </div>
        <div class="col-md-8 col-lg-9">
          <div class="about-skills-conteiner">
            <div class="skills_frontend" id="skills_frontend">
              <?php for ($i=1; $i <= 4; $i++) { ?>
                <div class="circle" id="<?=$technologies[$i]['name']?>" data-name=<?=$technologies[$i]['name']?> data-procent=<?=$technologies[$i]['success']?>></div>
              <?php } ?>
            </div>
          </div>
        </div>
      </div>
      <div class="row row--skills">
        <div class="col-md-4 col-lg-3 d-flex">
          <div class="skills_title justify-content-center align-self-center"> Backend</div>
        </div>
        <div class="col-md-8 col-lg-9">
          <div class="about-skills-conteiner">
            <div class="skills_backend" id="skills_backend">
            <?php for ($i=5; $i <= 6; $i++) { ?>
                <div class="circle" id="<?=$technologies[$i]['name']?>" data-name=<?=$technologies[$i]['name']?> data-procent=<?=$technologies[$i]['success']?>></div>
              <?php } ?>
            </div>
          </div>
        </div>
      </div>
      <div class="row row--skills">
        <div class="col-md-4 col-lg-3 d-flex">
          <div class="skills_title justify-content-center align-self-center"> Workflow</div>
        </div>
        <div class="col-md-8 col-lg-9">
          <div class="about-skills-conteiner">
            <div class="skills_workflow" id="skills_workflow">
            <?php for ($i=7; $i <= 10; $i++) { ?>
                <div class="circle" id="<?=$technologies[$i]['name']?>" data-name=<?=$technologies[$i]['name']?> data-procent=<?=$technologies[$i]['success']?>></div>
              <?php } ?>
            </div>
          </div>
        </div>
      </div>
      <?php if (isAdmin()) { ?>
        <a class="button button-edit" href="<?=HOST?>skills-edit"> Редактировать </a>
      <?php } ?>
    </div>
  </div>
  <div class="container work-experience">
    <div class="row">
      <div class="col-md-4 col-lg-3"></div>
      <div class="col-md-8 col-lg-9">
        <h1>Опыт работы</h1>
        <?php if (isAdmin()) { ?>
            <div class="about-button">
              <a class="button button-edit" href="<?=HOST?>experience-edit"> Редактировать </a>
            </div>
          <?php } ?>
        <div class="work-item">
          <div class="work-item__date">февраль 2017  — по настоящее время</div>
          <div class="work-item-profile"><span class="work-item-profile__name">Frontend разработчик, Вконтактe, mail.ru group</span></div>
          <div class="work-item__message">Работы в команде Вконтакте. Работал в команде над обновление сервиса Музыка, работа над видео разделом. Создание видеоплеера. Создание кроссбраузерных компонентов. Работа над оптимизацией скорости загрузки медиа контента.</div>
        </div>
        <div class="work-item">
          <div class="work-item__date">сентябрь 2015 — январь 2017</div>
          <div class="work-item-profile"><span class="work-item-profile__name">Разработчик интерфейсов, Яндекс</span></div>
          <div class="work-item__message">Работы в проекте Яндекс Музыка. Создание новых разделов сервиса. Оптимизация и создание новых компонентов платформы.</div>
        </div>
        <div class="work-item">
          <div class="work-item__date">март 2013 — август 2015</div>
          <div class="work-item-profile"><span class="work-item-profile__name">Веб-разработчик, Cloud studio</span></div>
          <div class="work-item__message">Frontend и Backend для клиентских проектов студии. Работа над студийной CMS для интернет магазинов. Участие в разработке CRM системы “Sky CRM”. Стек используемых технологий: Git, JS, Angular.</div>
        </div>
      </div>
    </div>
  </div>