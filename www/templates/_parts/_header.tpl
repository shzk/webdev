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
      
      <?php include ROOT . "templates/_parts/_logo.tpl"; ?>

      <?php 
        if (isset($_SESSION['logged_user']) && $_SESSION['login'] == "1") {
          if ($_SESSION['role'] == 'admin') {
            // на сайте админ
            // echo "admin is online";
          }
          if ($_SESSION['role'] == 'user') {
            // на сайте пользователь
            include ROOT . "templates/_parts/_header-user-logged-in.tpl";
          } 
        } else {
          // на сайте гость
            include ROOT . "templates/_parts/_header-user-login.tpl";
          }
      ?>

      <?php include ROOT . "templates/_parts/_universal-nav.tpl"; ?>

    </div> <!-- /header-user__content -->
  </div> <!-- /header-user -->