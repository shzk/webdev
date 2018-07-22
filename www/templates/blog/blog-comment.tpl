<div class="comment">
  <div class="avatar avatar-small comment__avatar">
    <img src="<?=HOST?>usercontent/avatar/<?=$comment['avatar_small']?>" alt="Аватар <?=$comment['name'].' '.$comment['secondname']?>"/>
  </div>
  <div class="comment__info__user_date">
    <div class="comment__user_name"><?=$comment['name'].' '.$comment['secondname']?></div>
    <div class="time_container">
      <i class="far fa-clock"></i>
      <div class="comment__date"><?=$comment['date_time']?></div>
    </div>
  </div>
  <div class="comment__text">
    <?=$comment['text']?>
  </div>
</div>