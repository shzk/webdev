<footer class="footer">
    <div class="container">
      <div class="row">
        <div class="col-md-4 col-sm">
          <p class="footer-copy">© Denis Tokarev<br/>	Создано с <i class="fas fa-heart"> </i> в 2018 году</p>
        </div>
        <div class="col-md-3 col-sm">
          <ul class="menu">
            <li><a href="<?=HOST?>">Главная</a></li>
            <li><a href="<?=HOST?>about">Обо мне</a></li>
            <li><a href="<?=HOST?>works">Работы</a></li>
            <li><a href="<?=HOST?>blog">Блог</a></li>
            <li><a href="<?=HOST?>contacts">Контакты</a></li>
          </ul>
        </div>
        <div class="col-md-5 col-sm">
          <ul class="footer-icons">
            <?php if ( $contacts->vk != "") {  ?>
              <li><a href="<?=$contacts->vk?>"><i class="fab fa-vk"></i></a></li>
            <?php } ?>
            <?php if ( $contacts->github != "") {  ?>
              <li><a href="<?=$contacts->github?>"><i class="fab fa-github"></i></a></li>
            <?php } ?>
            <?php if ( $contacts->twitter != "") {  ?>
              <li><a href="<?=$contacts->twitter?>"><i class="fab fa-twitter"></i></a></li>
            <?php } ?>
            <?php if ( $contacts->fb != "") {  ?>
              <li><a href="<?=$contacts->fb?>"><i class="fab fa-facebook-f"></i></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
    </div>
  </footer>
