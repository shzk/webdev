<form class="form-container" action="/sign-up.html" id="form-validate">
        <div class="form-title">Регистрация</div>
        <div class="error-massages" id="error-massages">
          <div class="error-message error-message__email">Введите email</div>
          <div class="error-message error-message__password">Введите пароль</div>
          <div class="block-error block-error__booked">
            <div class="error-message error-message__booked">Данный email уже занят.</div>
            <div class="description-error">
              <p>Используйте другой email чтобы создать новый аккаунт.</p>
              <p>Или воспользуйтесь <a href="#">восстановлением пароля</a>, чтобы войти на сайт.</p>
            </div>
          </div>
        </div>
        <div class="form-fields" id="form-fields">
          <input class="form-full-width" type="text" name="email" placeholder="E-mail"/>
          <input class="form-full-width" type="text" name="password" placeholder="Пароль"/>
        </div>
        <div class="additional-info"></div><a class="button button-login" href="#"> Регистрация </a>
      </form>
