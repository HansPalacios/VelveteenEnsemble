
$(document).ready(function(){	
	 	var pages = $('.hidepages');
	 	var admin1 = $('#admin1')
	 	var admin2 = $('#admin2')
	 	var admin3 = $('#admin3')
	 	var link1 = $('#link1')
	 	var link2 = $('#link2')
	 	var link3 = $('#link3')


		link1.click(function() {
			pages.hide();
			admin1.show();
		});

		link2.click(function() {
			pages.hide();
			admin2.show();
		});

		link3.click(function() {
			pages.hide();
			admin3.show();
		});
});