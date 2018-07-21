<div class="nav-admin">
    <div class="avatar avatar-small"><img src="<?=HOST?>usercontent/avatar/<?=$currentUser['avatar_small']?>" alt=""/></div>
    <div class="admin-profile">
      <div class="admin-profile__name"><?=$currentUser->name?> <?=$currentUser->secondname?></div><a class="btn btn--admin" href="<?=HOST?>profile">Администратор</a>
    </div>
    <nav>
      <ul class="admin-menu">
        <li><i class="fas fa-plus-circle"></i><a href="/post-edit.html">Пост</a></li>
        <li><i class="fas fa-edit"></i><a href="/about-edit.html">Обо мне</a></li>
        <li><i class="fas fa-plus-circle"></i><a href="/work-edit.html">Работа</a></li>
        <li><i class="fas fa-edit"></i><a href="/contact-edit.html">Контакты</a></li>
        <li><i class="fas fa-envelope"></i><a href="/message-edit.html">Сообщения</a></li>
      </ul>
    </nav>
    <div class="admin-login"><i class="fas fa-sign-out-alt"></i><a href="<?php echo HOST . "logout"; ?>">Выход</a></div>
  </div> <!-- /nav-admin -->