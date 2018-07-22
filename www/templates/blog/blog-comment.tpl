<div class="comment">
  <div class="avatar avatar-small comment__avatar">
    <img src="/img/avatar-img/avatar_man.jpg" alt="Джон До"/>
  </div>
  <div class="comment__info__user_date">
    <div class="comment__user_name"><?=$comment->user_id?></div>
    <div class="time_container">
      <i class="far fa-clock"></i>
      <div class="comment__date"><?=$comment->date_time?></div>
    </div>
  </div>
  <div class="comment__text">
    <?=$comment->text?>
  </div>
</div>