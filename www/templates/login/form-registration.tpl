<form class="form-container" action="registration" id="form-validate" method="POST">
        <div class="form-title">Регистрация</div>

        <?php
          if (isset($errors)) {
            foreach ($errors as $error) {
              if (count($error) == 1) {?>
              <div class="error-message error-message__email"><?=$error['title']?></div>
            <?php } else if (count($error) == 2) {?>
              <div class="block-error block-error__booked">
                <div class="error-message error-message__booked"><?=$error['title']?></div>
                <div class="description-error">
                  <p><?=$error['desc']?></p>
                </div>
              </div>
            <?php }
            }
          }
        ?>
        
        <div class="form-fields" id="form-fields">
          <input class="form-full-width" type="text" name="email" placeholder="E-mail" value="den4@icloud.com"/>
          <input class="form-full-width" type="password" name="password" placeholder="Пароль" value="123456"/>
        </div>
        <div class="additional-info"></div>
        <input class="button button-login" name="register" type="submit" value="Регистрация">
        <!-- <a class="button button-login" href="#"> Регистрация </a> -->
      </form>
