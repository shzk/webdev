<body class="work-admin-individual">
  <?php 
    if (isset($_SESSION['logged_user']) && $_SESSION['login'] == "1") {
      if ($_SESSION['role'] == 'admin') {
        include ROOT . "templates/_parts/_admin-header.tpl";
      } 
    } 
  ?>
  <div class="container-work-page--individual">
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
    </div>