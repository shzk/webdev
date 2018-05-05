<form class="form-container" action="/login.html" id="form-validate">
        <div class="form-title">Вход на сайт</div>
        <div class="error-massages" id="error-massages">
          <div class="error-message error-message__email">Введите email</div>
          <div class="error-message error-message__password">Введите пароль</div>
          <div class="block-error block-error__enter">
            <div class="error-message error-message__enter">Неверный email или пароль.</div>
            <div class="description-error">
              <p>Введите верные данные для входа или воспользуйтесь <a href="#">восстановлением пароля</a>, чтобы войти на сайт.</p>
            </div>
          </div>
        </div>
        <div class="form-fields" id="form-fields">
          <input class="form-full-width" type="text" name="email" placeholder="E-mail"/>
          <input class="form-full-width" type="text" name="password" placeholder="Пароль"/>
        </div>
        <div class="additional-info">
          <div class="save-check__block">
            <input id="save-check" type="checkbox" name="save-check" checked="checked" hidden="hidden"/>
            <label for="save-check">Запомнить меня</label>
          </div><a href="#">Забыл пароль</a>
        </div><a class="button button-login" href="#"> Войти </a>
      </form>
