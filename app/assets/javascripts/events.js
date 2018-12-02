// ( function($) {
	$(document).ready(function() {   
		var newevent_type = $('#event_type');
		var other_newevent_type = $('#other_newevent_type');

		newevent_type.change(function(){   
			if(newevent_type.val() == 'Other')
			  other_newevent_type.show(); 
			else 
			  other_newevent_type.hide(); 
		});   
	});   
// });