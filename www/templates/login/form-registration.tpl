<form class="form-container" action="<?=HOST?>registration" id="form-validate" method="POST">
        <div class="form-title">Регистрация</div>

        <?php require ROOT."/templates/_parts/_errors.tpl"?>        
        
        <div class="form-fields" id="form-fields">
          <input class="form-full-width" type="text" name="email" placeholder="E-mail"/>
          <input class="form-full-width" type="password" name="password" placeholder="Пароль"/>
        </div>
        <div class="additional-info"></div>
        <input class="button button-login" name="register" type="submit" value="Регистрация">
        <!-- <a class="button button-login" href="#"> Регистрация </a> -->
      </form>
