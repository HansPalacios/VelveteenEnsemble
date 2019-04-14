// ( function($) {
$(document).ready(function(){	


	$('#close').click(function() {
	 $('#email').hide();     
	});

	if (sessionStorage.getItem('firstVisit') === "1")
    {
       $("#email").hide(); 
    }
    else {
    	 $("#email").show(); 
    }

	$('#new_email').on('submit', function() {
		sessionStorage.setItem('firstVisit', '1');
	  $('#email').hide();
	});

	// Save data to sessionStorage
// 

// /* Fix size on document ready.*/
     




// if(!sessionStorage.getItem('firstVisit')){ 
// 	sessionStorage.setItem('firstVisit', '1'); }
// else{ 
// 	sessionStorage.setItem('firstVisit', '0'); }

// $(function(){ if (sessionStorage.getItem('firstVisit') === "1"){ $("#email").css('display', 'block') } 


} ) ;