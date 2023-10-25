// video mute Homepage Fancy

$( document ).ready(function() {
// this is to unmute the video block
	if ($('.video__foreground').length) {
		function replace_param(iframe, param, value) {
		  // Alias the iframe's source.
		  var iframe_src = iframe.src;

		  if (!iframe_src.match(/\?/)) {
			// Exit, if there isn't a query string.
			return;
		  }

		  // Take the source, and split it at "?" query.
		  var iframe_src_array = iframe_src.split('?');

		  // Base URL: "http://example.com/path/to/file"
		  var base_url = iframe_src_array[0];

		  // Parameter array: ['foo=1', 'bar=2', 'baz=3']
		  var param_array = iframe_src_array[1].split('&');

		  // How many are there? (Maybe none)
		  var param_count = param_array.length;

		  // To be used in the loop.
		  var proxy_array = [];

		  // If there are multiple params...
		  if (param_count) {
			// Loop through them...
			for (var i = 0; i < param_count; i++) {
			  // If the param is what was passed in, kill it.
			  // Because, we'll be replacing it later anyway.
			  if (!param_array[i].match(param + '=')) {
				// Stuff into our proxy array.
				proxy_array.push(param_array[i]);
			  }
			}
		  }

		  // If there are STILL multiple params...
		  if (proxy_array.length) {
			// Set the iframe's source to the base URL,
			// with all the other params, plus new one.
			iframe.src = base_url + '?' + proxy_array.join('&') + '&' + param + '=' + value;
		  }
		  // If we get to here, we assume we only have one param
		  // to work with. Such as: "?foo=1", not "?foo=1&bar=2"
		  else {
			// Set the iframe's source to the base URL,
			// with value that was passed in initially.
			iframe.src = base_url + '?' + param + '=' + value;
		  }
		}	

			var my_iframe = $('.video__foreground iframe')[0];
			var my_param = 'mute';
			var sound_on = '0';
			var sound_off = '1'; 

			$("#soundon").click(function() {		
				replace_param(my_iframe, my_param, sound_on);
				$(this).addClass('togglesound');
				$('#soundoff').removeClass('togglesound');
			});
			$("#soundoff").click(function() {		
				replace_param(my_iframe, my_param, sound_off);
				$(this).addClass('togglesound');
				$('#soundon').removeClass('togglesound');
			});

	}	
});
