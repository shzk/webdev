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