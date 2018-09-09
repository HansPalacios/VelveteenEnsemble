

( function($) {
$(document).ready(function(){	
 	var $elements = $('.loopOne, .loopTwo, .loopThree, .loopFour');

	function loop(index) {
    $elements.eq(index).fadeIn(600).delay(4500).fadeOut(600, function() { 
      loop((index + 1) % $elements.length);
    });
	}

	loop(0); 

});

} ) ( jQuery );