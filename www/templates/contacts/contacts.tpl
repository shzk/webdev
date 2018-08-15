<?php if (isAdmin()) { ?>
<div class="edit-contacts"><a class="button button-edit" href="<?=HOST?>contacts-edit"> Редактировать </a>
  </div>
<?php } ?>
  <main class="wrap-content">
    <div class="main-content main-content--admin">
      <div class="contacts">
        <h1 class="contacts-title">Контакты</h1>
        <div class="contacts_info">
        <?php if ( $contacts->email != "") {  ?>
          <div class="info email">Email
            <div class="block"><span> <a class="info_email" href="mailto:<?=$contacts->email?>"><?=$contacts->email?></a></span></div>
          </div>
        <?php } ?>
        <?php if ( $contacts->skype != "") {  ?>
          <div class="info skype">Skype
            <div class="block"><span> <a class="info_skype" href="skype:<?=$contacts->skype?>"><?=$contacts->skype?></a></span></div>
          </div>
        <?php } ?>
          <div class="info social">Социальные сети
            <div class="social-info">
            <?php if ( $contacts->vk != "") {  ?>
              <span class="vk"><a href="<?=$contacts->vk?>">Профиль Вконтакте</a></span>
            <?php } ?>
            <?php if ( $contacts->fb != "") {  ?>
              <span class="vk"><a href="<?=$contacts->fb?>">Профиль Facebook</a></span>
            <?php } ?>
            <?php if ( $contacts->github != "") {  ?>
              <span class="vk"><a href="<?=$contacts->github?>">Профиль Github</a></span>
            <?php } ?>
            <?php if ( $contacts->twitter != "") {  ?>
              <span class="facebook"><a href="<?=$contacts->twitter?>">Профиль Twitter</a></span>
            <?php } ?>
            </div>
          </div>
          <?php if ( $contacts->tel != "") {  ?>
            <div class="info number">Телефон
              <div class="block"><span class="info_number"><?=$contacts->tel?></span></div>
            </div>
          <?php } ?>
          <?php if ( $contacts->address != "") {  ?>
            <div class="info addres">Адрес
              <div class="block"><span class="info_addres"><?=$contacts->address?></span></div>
            </div>
          <?php } ?>
        </div>
      </div>
      <form class="form" action="<?=HOST?>contacts" method="POST" enctype="multipart/form-data">
        <h1 class="contacts-title contact-title-form">Свяжитесь со мной</h1>
        <?php include(ROOT . 'templates/_parts/_errors.tpl')?>
        <div class="input-error-message">
          <input class="form-name form-name-fullScreen" type="text" name="name" placeholder="Введите имя"/>
        </div>
        <div class="input-error-message">
          <input class="form-name form-name-fullScreen" type="text" name="email" placeholder="Введите Email"/>
        </div>
        <div class="input-error-message">
          <textarea class="form-message mod_form-message--contacts-admin" name="message" placeholder="Сообщение"></textarea>
        </div>
        <h5 class="form_btn-up-wrap"> Прикрепить файл</h5>
        <div class="form-download">
          <div class="form-download__title">jpg, png, pdf, doc, весом до 4Мб.</div>
          <div class="form-download__container contacts-container-mod">
          <fieldset>
            <input type="file" name="file" id="file" class="inputfile" data-multiple-caption="{count} файлов выбрано" multiple style="display:none;"/>
            <label class="form-download__btn contacts-btn-mod" for="file">Выбрать файл</label> <span></span>
          </fieldset>
            <!-- <label class="form-download__btn contacts-btn-mod">Выбрать файл
              <input type="file" id="file" name="file" class="inputfile" data-multiple-caption="{count} файлов выбрано" multiple style="display:none;"/>
            </label>
            <input class="form-download__file-name" id="value" type="text" value="Файл не выбран" disabled="disabled"/> -->
          </div>
        </div>
        <div class="form_submit-button">
        <input class="button button-save" type="submit" name="newMessage" value="Отправить">
        </div>
      </form>
    </div>
  </main>
  <div class="map-wrapp">
    <div class="map-conteiner" id="map"></div>
  </div><script defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAIr67yxxPmnF-xb4JVokCVGgLbPtuqxiA&callback=initMap"></script>
  <script async src="<?=HOST?>templates/assets/js/googleMap.js"></script>