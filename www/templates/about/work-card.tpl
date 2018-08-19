<div class="work-item--admin">
  <?php if (isAdmin()) { ?>
    <a class="button button-delete" href="<?=HOST?>experience-edit?id=<?=$work->id?>"> Удалить </a>
  <?php } ?>
  <div class="work-item__date"><?=$work->period?></div>
  <div class="work-item-profile">
    <span class="work-item-profile__name"><?=$work->title?></span>
  </div>
  <div class="work-item__message"><?=$work->description?></div>
</div>