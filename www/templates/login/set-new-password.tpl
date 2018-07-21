<?php require ROOT. "templates/_parts/_errors.tpl" ?>



<!-- Если код восстановления верен -->
<?php if ($recoveryCode) { ?>
	<!-- Устанавливаем  пароль -->
	<form class="form-container" method="POST" action="<?=HOST?>set-new-password" id="form-validate">
		<div class="form-title">Введите новый пароль</div>
		<div class="additional-info">
			<p>Введите новый пароль для вашего аккаунта</p>
		</div>
		
		<div class="form-fields" id="form-fields">
			<input class="form-full-width" type="password" name="resetpassword" placeholder="Новый пароль"  />
		</div>
		<input type="hidden" name="resetemail" value="<?=$_GET['email']?>">
		<input type="hidden" name="onetimecode" value="<?=$_GET['code']?>">
		<div class="additional-info"></div>
		<input type="submit" name="set" class="button button-login" value="Установить новый пароль">
	
	</form>
<!--  Если замена пароля произошла успешно -->
<?php } elseif ($success) { ?>
	
<form class="form-container" method="POST" action="<?=HOST?>lost-password" id="form-validate">
	<div class="form-title">Пароль успешно изменен</div>
	
		<div class="form-group">
			<a href="login" class="btn btn-primary">Перейти на страницу входа</a>
		</div>
	<?php } else { ?>
	<div class="col-md-4">
		<div class="block-error block-error__booked">
			<div class="error-message error-message__booked">Неверный код восстановления</div>
			<div class="description-error">
				<p>Был указан неверный код для восстановления пароля. Перейдите по ссылке из письма, либо начните процедуру восстановления пароля заново.</p>
				<a href="<?=HOST?>login" class="button button-login">Перейти на страницу входа</a>
			</div>
		</div>
	</div>
	<?php } ?>

</form>