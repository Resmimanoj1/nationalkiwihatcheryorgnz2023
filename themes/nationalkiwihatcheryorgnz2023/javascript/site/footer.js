// GSLH Homepage Fancy


$( document ).ready(function() {
	
	// Tabs
	//footer toggle on mobile 
	$('h4.js-accordion-toggle').click(function() {
		$(this).parent().find('ul').slideToggle();
		$(this).toggleClass('open');
	});
	
	
	
});