<form class="form-container" action="<?=HOST?>lost-password" id="form-lost-password" method="POST">
        <div class="form-title">Забыли пароль?</div>
        
        <?php require ROOT."/templates/_parts/_errors.tpl"?>
      
        <div class="form-fields" id="form-fields">
          <input class="form-full-width" type="text" name="email" placeholder="E-mail"/>
        </div>
        <div class="additional-info">
          <!-- <div class="save-check__block">
            <input id="save-check" type="checkbox" name="save-check" checked="checked" hidden="hidden"/>
            <label for="save-check">Запомнить меня</label>
          </div> -->
          <a href="<?=HOST?>login">Вернуться ко входу</a>
        </div>
        <input class="button button-login" name="lost" type="submit" value="Восстановить пароль">
      </form>