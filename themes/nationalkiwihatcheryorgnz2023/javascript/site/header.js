$( document ).ready(function() {
	
	var logolink = $('.page-header__logo-link img').attr('src');
	var homelinkformenu = "<a href='/' class='menulogo'><img src='" + logolink + "'></img></a>"
	
	if ($('.header-nav').css('zIndex') == '99')
		{
		  $('.main-nav').prepend(homelinkformenu); 
		}
	
	var shadey = '<div class="shade menu-close"></div>';
	$('.page-header__container').append(shadey);
	
	// lazy load
	var lazyLoadInstance = new LazyLoad({elements_selector: ".lazy"}); 
	
	//language selector toggle
    $('.language-selector__toggle-label').click(function() { 
		$(this).toggleClass('js-language');
	});
	$('.language-selector').mouseleave(function() {
		$(this).find('.language-selector__toggle-label').removeClass('js-language')
	});
	
	//slide menu
	$('.page-header__mobile-menu-trigger').click(function() {
		$('.header-nav').toggleClass('showmenu');
		$('.shade').toggleClass('shadey');
		$('body').toggleClass('hold');
		$(this).toggleClass('menuclose');
		/*
		if ($(this).text() == "Close")
			   $(this).text("Menu")
			else
			   $(this).text("Close");
			   */
	});
	
	//close menu 
	$('.menu-close').click(function() {
		$('.header-nav').removeClass('showmenu');
		$('.shade').removeClass('shadey');
		$('body').removeClass('hold');
		$('.page-header__mobile-menu-trigger').removeClass('menuclose')
	});
	
	//mobile expand sub-menus of main menu
	$('.mobile-nav-trigger').click(function() {
		$(this).next('ul').slideToggle();
		$(this).toggleClass('menuopen');
	});
	
	
	
});