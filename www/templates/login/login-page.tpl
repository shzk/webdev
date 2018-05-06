<body class="login-page">
  <div class="login-page__container">
    <div class="login-page__header">
      <div class="header-user__logo-brand">
        <div class="header-user__logo"><a href="<?=HOST?>">
            <svg class="icon icon-plane plane-mod">
              <use xlink:href="<?=HOST?>templates/assets/img/sprite.svg#plane"></use>
            </svg></a></div><a class="header-user__brand" href="<?=HOST?>">
          <div class="header-user__brandname">
            <h1>Digital Lifestyle</h1>
          </div></a>
      </div>
      <?php if ($uri[0] == 'registration') { ?>
        <div class="header-user__right-link"><a href="login">Войти</a></div>
      <?php } else { ?>
        <div class="header-user__right-link"><a href="registration">Регистрация</a></div>
      <?php } ?>
      
      
    </div>
    <div class="login-page__form-container">
<?=$content?>
</div>
<div class="login-page__footer">
      <p class="footer-copy">© Денис Токарев<br/>	Создано с <i class="fas fa-heart"> </i> в <a class="footer-link" href="http://webcademy.ru/" target="_blank">WebCademy.ru</a> в 2018 году</p>
    </div>
  </div>