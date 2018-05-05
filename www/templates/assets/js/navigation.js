$(document).ready(function() {

	// Скрипт для показа и скрытия выпадающего меню на смартфонах
	// Создаем переменые для кнопки и для меню добовляем ID
	//  ID Переключателей
	var pullNav = $('#navigation-toggle');
	var pullNavOpen = $('#navigation-toggle .header-user__mobile-toggle');
	var pullNavClose = $('#navigation-toggle .header-user__mobile-close');
	//  ID навигации авторизации
	var toggleLogin = $('#navigation-login');	
	// Классы 
	var toggleMenu =  $('#navigation-menu');

	// NAVIGATION
	// OPEN MENU
	pullNavOpen.on("click", function(e){
	    // Отменяем стандартное поведение ссылки в браузере
	    e.preventDefault();
	    // Открываем меню
	    toggleMenu.addClass('header-user__mobilebar-show');
	    toggleLogin.addClass('header-user__mobilebar-show');
	    pullNavClose.addClass('header-user__mobilebar-show');
	});
	// CLOSE MENU
	pullNavClose.on("click", function(e){
	    // Отменяем стандартное поведение ссылки в браузере
	    e.preventDefault();
	    // Закрываем меню
	    toggleMenu.removeClass('header-user__mobilebar-show');
	    toggleLogin.removeClass('header-user__mobilebar-show');
	    pullNavClose.removeClass('header-user__mobilebar-show');
	});

	// При изменении размера окна, в большую сторону, если меню было скрыто, показываем его
	// И у кнопки убираем модификатор --active
	$(window).resize(function(){
	    var w = $(window).width();
	    if(w > 992) {
	    	toggleMenu.removeClass('header-user__mobilebar-show');
		    toggleLogin.removeClass('header-user__mobilebar-show');
		    pullNavClose.removeClass('header-user__mobilebar-show');
	    } else {}
	});
});