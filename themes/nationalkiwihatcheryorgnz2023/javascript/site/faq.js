// FAQ  Fancy


$( document ).ready(function() {
	
	// Booking Info
	$('.js-faq').click(function() {
		$(this).parent().toggleClass('info-open');
		$(this).next('div').slideToggle();
	});
	
});