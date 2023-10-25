// Form animation

// Form text
	if ($('.userform').length) {
	
		 $('.userform input, .userform textarea').blur(function() {
			if ( $(this).filter(function() { 
				return $(this).val(); 
			}).length > 0) { } else {
			$(this).parent().parent().removeClass("focus");
			}
		  })
		  .focus(function() {
			$(this).parent().parent().addClass("focus");
		  });
		
	}