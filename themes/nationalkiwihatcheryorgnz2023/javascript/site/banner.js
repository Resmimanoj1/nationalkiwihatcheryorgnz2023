$( document ).ready(function() {

	$('.js-slider').on('init', function(event, slick, currentSlide, nextSlide){
	  $('.slick-active').find('.image-slider__image').addClass('blur');
	});
		
	$('.js-slider').slick({
		
		slidesToShow: 1,
  		slidesToScroll: 1,
		autoplay: true,
		infinite: true,
		dots:true,
		arrows:false,
		fade: true,
		speed: 1500,
		
		/*
		responsive: [
			{
			  breakpoint: 1250,
			  settings: {
					slidesToShow: 1,
				}
			}
		],
		*/
		
	});
	// On before slide change
	$('.js-slider').on('beforeChange', function(event, slick, currentSlide, nextSlide){
     	$('.slick-slide').find('.image-slider__image').addClass('blur');
		$('.slick-active').find('.image-slider__image').removeClass('blur');
	  
	});
	
	
	$('.js-slider').on('afterChange', function(event, slick, currentSlide, nextSlide){
	  $('.slick-active').find('.image-slider__image').addClass('blur');
	});
	

 
	
});