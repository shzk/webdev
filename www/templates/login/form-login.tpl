<form class="form-container" action="<?=HOST?>login" id="form-validate" method="POST">
        <div class="form-title">Вход на сайт</div>
        
        <?php require ROOT."/templates/_parts/_errors.tpl"?>
      
        <div class="form-fields" id="form-fields">
          <input class="form-full-width" type="text" name="email" placeholder="E-mail"/>
          <input class="form-full-width" type="password" name="password" placeholder="Пароль"/>
        </div>
        <div class="additional-info">
          <div class="save-check__block">
            <input id="save-check" type="checkbox" name="save-check" checked="checked" hidden="hidden"/>
            <label for="save-check">Запомнить меня</label>
          </div><a href="<?=HOST?>lost-password">Забыл пароль</a>
        </div>
        <input class="button button-login" name="login" type="submit" value="Войти">
      </form>