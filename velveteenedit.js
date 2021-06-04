// hide dropdown when clicking on other option to fill out input

$(document).ready(function() {   
	var type = $('#contact_event_type');
	var other_type = $('#other_type');
	var heard = $('#contact_heardby');
	var other_heard = $('#other_heardby');

	type.change(function(){   
		if(type.val() == 'Other')
		  other_type.show(); 
		else 
		  other_type.hide(); 
	});   
	heard.change(function(){   
		if(heard.val() == 'Other')
		  other_heard.show(); 
		else 
		  other_heard.hide(); 
	});   
});   
