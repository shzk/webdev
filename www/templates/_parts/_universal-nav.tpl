<div class="header-user__nav-box" id="navigation-menu">
  <div class="menu-admin">
    <div class="tab-profile">
      <!-- <div id="on_mob" class="avatar avatar-small">
        <?php if ($_SESSION['logged_user']['avatar_small'] == "") { ?>
          <img src="<?=HOST?>usercontent/avatar/avatar.jpg" alt="image"/>
        <?php } else { ?>
          <img src="<?=HOST?>usercontent/avatar/<?=$currentUser['avatar_small']?>" alt="image"/>
        <?php } ?>
        </div>
        <div class="tab-profile__name"><?=$currentUser->name?> <?=$currentUser->secondname?></div> -->
      </div>
    <div class="tab-wrap">
      <input type="radio" name="tabs" id="tab1" checked="checked"/>
      <div class="tab-label-content" id="tab1-content">
        <label for="tab1">Страницы</label>
        <nav class="header-user__nav">
          <ul class="menu">
            <li><a href="<?=HOST?>">Главная</a></li>
            <li><a href="<?=HOST?>about">Обо мне</a></li>
            <li><a href="<?=HOST?>works">Работы</a></li>
            <li><a href="<?=HOST?>blog">Блог</a></li>
            <li><a href="<?=HOST?>contacts">Контакты</a></li>
          </ul>
        </nav>
      </div>
      <?php if(isAdmin()) { ?>
        <input type="radio" name="tabs" id="tab2"/>
        <div class="tab-label-content" id="tab2-content">
          <label for="tab2">Админка</label>
          <nav Class="menu-admin">
            <ul>
              <li><i class="fas fa-plus-circle"></i><a href="<?=HOST?>post-edit">Пост</a></li>
              <li><i class="fas fa-edit"></i><a href="<?=HOST?>about-edit">Обо мне</a></li>
              <li><i class="fas fa-plus-circle"></i><a href="<?=HOST?>work-edit">Работа</a></li>
              <li><i class="fas fa-edit"></i><a href="<?=HOST?>contact-edit">Контакты</a></li>
              <li><i class="fas fa-envelope"></i><a href="<?=HOST?>message-edit">Сообщения</a></li>
            </ul>
          </nav>
        </div>
      <?php } ?>
    </div>
  </div>
</div> <!-- /header-user__nav-box -->