<main class="wrap-content">
    <div class="main-content main-content--edit">
      <div class="content-title"> 
        <h1>Редактировать данные</h1>
      </div>
      <?php include(ROOT . 'templates/_parts/_errors.tpl')?>
      <form class="form-edit" action="<?=HOST?>contacts-edit" method="POST">
        <div class="wrap-row">
          <div class="row-inp">
            <div class="edit-inp form-edit_wrap">Имя
              <input class="form-name edit-input" type="text" name="name" placeholder="Введите имя" value="<?=$contacts->name?>"/><span class="error"></span>
            </div>
            <div class="form-edit_wrap">Фамилия
              <input class="form-name edit-input" type="text" name="secondname" placeholder="Введите фамилию" value="<?=$contacts->secondname?>"/><span class="error"></span>
            </div>
          </div>
          <div class="row-inp">
            <div class="edit-inp form-edit_wrap">Email
              <input class="form-name edit-input" type="text" name="email" placeholder="Введите email" value="<?=$contacts->email?>"/><span class="error"></span>
            </div>
            <div class="form-edit_wrap">Skype
              <input class="form-name edit-input" type="text" name="skype" placeholder="Введите skype" value="<?=$contacts->skype?>"/><span class="error"></span>
            </div>
          </div>
          <div class="row-inp">
            <div class="row-wrap">
              <div class="edit-inp form-edit_wrap"><span>Вконтакте</span>
                <input class="form-name edit-input" type="text" name="vk" placeholder="Введите ссылку на профиль" value="<?=$contacts->vk?>"/><span class="error"></span>
              </div>
              <div class="edit-inp form-edit_wrap fix-margin"><span>Facebook</span>
                <input class="form-name edit-input" type="text" name="fb" placeholder="Введите ссылку на профиль" value="<?=$contacts->fb?>"/><span class="error"></span>
              </div>
            </div>
            <div class="row-wrap">
              <div class="edit-inp form-edit_wrap"><span>GitHub</span>
                <input class="form-name edit-input" type="text" name="github" placeholder="Введите ссылку на профиль" value="<?=$contacts->github?>"/><span class="error"></span>
              </div>
              <div class="form-edit_wrap"><span>Twitter</span>
                <input class="form-name edit-input" type="text" name="twitter" placeholder="Введите ссылку на профиль" value="<?=$contacts->twitter?>"/><span class="error"></span>
              </div>
            </div>
          </div>
          <div class="row-inp">
            <div class="edit-inp form-edit_wrap">Телефон
              <input class="form-name edit-input" type="text" name="tel" placeholder="Введите номер" value="<?=$contacts->tel?>"/><span class="error"></span>
            </div>
            <div class="edit-inp form-edit_wrap fix-margin">Адрес
              <textarea class="form-message" rows="5" name="address" placeholder="Введите адрес"><?=$contacts->address?></textarea><span class="error"></span>
            </div>
          </div>
        </div>
        <div class="row-inp button-row">
          <input class="button button-save" type="submit" value="Сохранить" name="contactsUpdate">
          <a class="button button-regular" href="<?=HOST?>contacts"> Отмена </a>
        </div>
      </form>
    </div>
  </main>
  <div class="map-wrapp">
    <div class="map-conteiner" id="map"></div>
  </div>
  <script defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAIr67yxxPmnF-xb4JVokCVGgLbPtuqxiA&callback=initMap"></script>
  <script async src="<?=HOST?>templates/assets/js/googleMap.js"></script>