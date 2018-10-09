$(document).ready(function(){	
	var close = $('.close');
 	var email = $('#email');
 	var html = $('html');
 	
	close.click(function() {
     email.hide(); 
     html.css('overflow-y', 'scroll');
  });

  if (email.css('display') === 'block') {
  	html.css('overflow-y', 'hidden');
  	} 
});
