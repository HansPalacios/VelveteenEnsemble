$(document).ready(function(){	
	var close = $('.close');
	var mailsubmit = $('.mailsubmit');
 	var email = $('#email');
 	var html = $('html');
 	
	close.click(function() {
    email.hide(); 
    html.css('overflow-y', 'scroll');
    document.body.scrollTop = 0; 
    document.documentElement.scrollTop = 0; 
  });

  mailsubmit.click(function() {
    email.hide(); 
    html.css('overflow-y', 'scroll');
    document.body.scrollTop = 0; 
    document.documentElement.scrollTop = 0; 
  });

  if (email.css('display') === 'block') {
  	html.css('overflow-y', 'hidden');
  	} 
  });

    // copy emails to clipboard - for admin use

