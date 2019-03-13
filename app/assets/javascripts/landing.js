// ( function($) {
	$(document).ready(function(){	
	 	var reviews = $('.review1, .review2, .review3, .review4');

		function reviewloop(index) {
	    reviews.eq(index).fadeIn(600).delay(6000).fadeOut(600, function() { 
	      reviewloop((index + 1) % reviews.length);
	    });
		} 
		reviewloop(0)
	});
	