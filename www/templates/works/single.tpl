  <div class="container">
    <div class="row justify-content-md-end container-work-title">
      <div class="col-lg-9 col-md-8 work-wrap">					
        <div class="work-title"><?=$work['title']?></div>
      </div>
      <div class="col-lg-2 col-md-3 work-wrap"> <a class="button button-edit" href="<?=HOST?>works/work-edit?id=<?=$work['id']?>"> Редактировать </a>
      </div>
    </div>
    <div class="row justify-content-md-center">
      <div class="col-md-10 work-wrap">
        <div class="work-information">
          <div class="work-autor"><?=$work['name']?> <?=$work['secondname']?></div>
          <div class="work-location"> <a href="#"><?=$work['w_cat_title']?></a></div>
          <div class="work-date-download"><?=rus_date("j F Y", strtotime($work['date']))?>		</div>
        </div>
        <div class="work-project"><img src="<?=HOST?>usercontent/work/<?=$work['work_img']?>"/></div>
      </div>
    </div>
    <div class="row justify-content-md-center">
      <div class="col-md-5 work-contant">
        <div class="title3">Кратко о проекте</div>
        <p><?=$work['summary']?></p>
        <div class="title6">Время работы над проектом: <?=$work['time']?> недель</div>
        <div class="title6">Страниц сверстано: <?=$work['pages']?> страницы</div>
        <div class="title6">Бюджет проекта: до <?=$work['price']?> рублей</div>
        <div class="title3">Результат</div>
        <p><?=$work['result']?></p>
      </div>
      <div class="col-md-5 work-contant">
        <div class="title3">Технологии</div>
        <?=$work['technologies']?>
        <div class="title3">Ссылка на проект</div>
        <p class="work-link-projects"><a href="<?=$work['link']?>"><?=$work['link']?></a></p>
        <div class="title3">Код на github</div>
        <p class="work-link-projects"><a href="<?=$work['github']?>"><?=$work['github']?></a></p>
      </div>
    </div>
    <div class="row justify-content-md-center">
      <div class="col-md-10 work-container-button">
      <?php if(@$prev_work_id) { ?>
        <a class="button button-regular" href="<?HOST?>works/work?id=<?=$prev_work_id?>"> 
          <span class="button__small-fa-icon">
            <i class="fas fa-arrow-left"></i>
          </span>
          <?=$prev_work_title?>
        </a>
      <?php } ?>
      <?php if(@$next_work_id) { ?>
        <a class="button button-regular" href="<?HOST?>works/work?id=<?=$next_work_id?>">
          <?=$next_work_title?>  
          <span class="button__small-fa-icon">
            <i class="fas fa-arrow-right"></i>
          </span>
        </a>
      <?php } ?>
      
      </div>
    </div>
  </div>
</div>