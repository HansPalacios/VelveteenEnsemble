// hide dropdown when clicking on other option to fill out input

$(document).ready(function() {   
	var type = $('#type');
	var other = $('#othertype');

	type.change(function(){   
		if(type.val() == "Other")   
		  other.show(); 
		else 
		  other.hide(); 
	});   
});   
