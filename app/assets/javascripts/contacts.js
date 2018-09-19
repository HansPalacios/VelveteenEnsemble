// hide dropdown when clicking on other option to fill out input

$(document).ready(function() {   
	var type = $('.type');
	var other = $('.other');

	$('.type').change(function(){   
		if(type.val() == 5)   
		  other.show(); 
		else 
		  other.hide(); 
	});   
});   
