<div class="row resume-wrap">
  <div class="col-md-4 col-lg-3 resume-avatar">
    <div class="avatar avatar-big">
      <img src="<?=HOST.'usercontent/about/'.$about->photo?>" alt="" />
    </div>
  </div>
  <div class="col-md-8 col-lg-9 resume-content">
    <div class="resume-content--text">
      <h1><?=$about->name?></h1>
      <p><?=$about->description?></p>
      <h3>Что я умею</h3>
      <p><?=$about->skills?></p>
    </div>
    <div class="resume-content--button">
      <a class="button button-regular" href="<?=HOST?>about"> Подробнее </a>
    </div>
  </div>
</div>