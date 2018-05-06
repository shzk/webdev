<?php 
    if (isset($_SESSION['logged_user']) && $_SESSION['login'] == "1") {
      if ($_SESSION['role'] == 'admin') {
        include ROOT . "templates/_parts/_admin-header.tpl";
      } 
    } 
  ?>
  <div class="header-user">

    <div class="header-user__content">

      <div class="header-user__mobile-bar" id="navigation-toggle">
        <div class="header-user__mobile-toggle">
          <svg class="icon icon-nav nav-mod">
            <use xlink:href="<?=HOST?>templates/assets/img/sprite.svg#nav"></use>
          </svg>
        </div>
        <div class="header-user__mobile-close">
          <svg class="icon icon-close close-mod">
            <use xlink:href="<?=HOST?>templates/assets/img/sprite.svg#close"></use>
          </svg>
        </div>
        <p>Открыть навигацию</p>
      </div> <!-- /header-user__mobile-bar -->

      <div class="header-user__logo-brand">
        <div class="header-user__logo"><a href="<?=HOST?>">
            <svg class="icon icon-plane plane-mod">
              <use xlink:href="<?=HOST?>templates/assets/img/sprite.svg#plane"></use>
            </svg></a></div><a class="header-user__brand" href="<?=HOST?>">
          <div class="header-user__brandname">
            <h1>Digital Lifestyle</h1>
          </div>
          <div class="header-user__brand-desc">
            <p>Сайт IT специалиста</p>
          </div></a>
      </div> <!-- /header-user__logo-brand -->

      <?php 
        if (isset($_SESSION['logged_user']) && $_SESSION['login'] == "1") {
          if ($_SESSION['role'] == 'user') {
            include ROOT . "templates/_parts/_user-header.tpl";
          }
        } 
      ?>

      <div class="header-user__nav-box" id="navigation-menu">
        <div class="menu-admin">
          <div class="tab-profile">
            <div class="avatar avatar-small"><img src="<?=HOST?>templates/assets/img/avatar-img/photo-small.jpg" alt="Админ"/></div>
            <div class="tab-profile__name">Юрий Ключевский</div><a class="btn btn--admin" href="#">Администратор</a>
          </div>
          <div class="tab-wrap">
            <input type="radio" name="tabs" id="tab1" checked="checked"/>
            <div class="tab-label-content" id="tab1-content">
              <label for="tab1">Страницы</label>
              <nav class="header-user__nav">
                <ul class="menu">
                  <li><a href="/">Главная</a></li>
                  <li><a href="/about.html">Обо мне</a></li>
                  <li><a href="/works.html">Работы</a></li>
                  <li><a href="/blog.html">Блог</a></li>
                  <li><a href="/contact.html">Контакты</a></li>
                </ul>
              </nav>
            </div>
            <input type="radio" name="tabs" id="tab2"/>
            <div class="tab-label-content" id="tab2-content">
              <label for="tab2">Админка</label>
              <nav Class="menu-admin">
                <ul>
                  <li><i class="fas fa-plus-circle"></i><a href="/post-edit.html">Пост</a></li>
                  <li><i class="fas fa-edit"></i><a href="/about-edit.html">Обо мне</a></li>
                  <li><i class="fas fa-plus-circle"></i><a href="/work-edit.html">Работа</a></li>
                  <li><i class="fas fa-edit"></i><a href="/contact-edit.html">Контакты</a></li>
                  <li><i class="fas fa-envelope"></i><a href="/message-edit.html">Сообщения</a></li>
                </ul>
              </nav>
            </div>
          </div>
        </div>
      </div> <!-- /header-user__nav-box -->

    </div> <!-- /header-user__content -->

  </div> <!-- /header-user -->