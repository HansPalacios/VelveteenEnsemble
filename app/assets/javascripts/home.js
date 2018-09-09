

( function($) {
$(document).ready(function(){	
 	var elements = $('.loopOne, .loopTwo, .loopThree, .loopFour');
 	var hamburger = $('.dropdown');
 	var dropdown = $('.dropdown-content');

	function loop(index) {
    elements.eq(index).fadeIn(600).delay(4500).fadeOut(600, function() { 
      loop((index + 1) % $elements.length);
    });
	}

	hambuger.click(function() {
    if (dropdown.css.('display') === 'none') {
      dropdown.show();
      dropdown.css('display', 'block');
    } else if (dropdown.css.('display') === 'block') {
      dropdown.hide();
      dropdown.css('display', 'none');
    }
  });

	loop(0); 

});

} ) ( jQuery );