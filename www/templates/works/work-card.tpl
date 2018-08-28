<div class="col-md-6 col-xl-4">
  <div class="card card-portfolio">
    <img class="card__img card-portfolio__img" src="<?=HOST?>usercontent/work/<?=(@$work->work_img_small) ? $work->work_img_small : 'no_image.png' ?>" alt="<?=$work->title?>"/>
    <h2 class="card__title"><?=mbCutString($work->title, 25)?></h2>
    <a class="button button-regular" href="<?HOST?>works/work?id=<?=$work->id?>"> Смотреть кейс </a>
  </div>
</div>