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
              <div class="circle" id="HTML5" data-name="HTML5" data-procent=<?=$skills->html5?>></div>
              <div class="circle" id="CSS3" data-name="CSS3" data-procent=<?=$skills->css3?>></div>
              <div class="circle" id="JS" data-name="JS" data-procent=<?=$skills->javascript?>></div>
              <div class="circle" id="jQuery" data-name="jQuery" data-procent=<?=$skills->jquery?>></div>
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
            <div class="circle" id="PHP" data-name="PHP" data-procent=<?=$skills->php?>></div>
            <div class="circle" id="MySQL" data-name="MySQL" data-procent=<?=$skills->mysql?>></div>
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
            <div class="circle" id="Git" data-name="Git" data-procent=<?=$skills->git?>></div>
            <div class="circle" id="Gulp" data-name="Gulp" data-procent=<?=$skills->gulp?>></div>
            <div class="circle" id="Bower" data-name="Bower" data-procent=<?=$skills->bower?>></div>
            <div class="circle" id="Webpack" data-name="Webpack" data-procent=<?=$skills->webpack?>></div>
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
        <?php foreach ($jobs as $work) { ?>
          <div class="work-item">
            <div class="work-item__date"><?=$work->period?></div>
            <div class="work-item-profile"><span class="work-item-profile__name"><?=$work->title?></span></div>
            <div class="work-item__message"><?=$work->description?></div>
          </div>
        <?php } ?>
      </div>
    </div>
  </div>