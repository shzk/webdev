<div class="header-user__inner" id="navigation-login">
  <div class="header-user__inner-box">
    <div class="header-user__inner-avatar">
      <div class="avatar-user__circle-border"><img src="<?=HOST?>templates/assets/img/avatar-img/0001.jpg" alt="image"/></div>
    </div>
    <div class="header-user__inner-content-box">
      <div class="header-user__inner-name-desc">
        <h2><?=$currentUser->name?> <?=$currentUser->secondname?></h2>
        <p>Пользователь</p>
      </div>
      <div class="header-user__inner-buttons-box">
        <div class="header-user__inner-profile">
          <form><a class="button button-header-user__inner-btn" href="<?=HOST?>profile"> Профиль </a>
          </form>
        </div>
        <div class="header-user__inner-quit">
          <form><a class="button button-header-user__inner-btn" href="<?=HOST?>logout"> Выход </a>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>