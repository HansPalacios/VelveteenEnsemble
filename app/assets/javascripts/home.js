

( function($) {
$(document).ready(function(){	
 	var $elements = $('.loopOne, .loopTwo, .loopThree, .loopFour');
 	var $listitems = $('.listone, .listtwo, .listthree, .listfour');

 	// function processImages()  {
		//   if ( loadingFlags[0] || loadingFlags[1] )
		//   {
		//     // check often until loaded
		//     window.setTimeout(processImages,50);
		//     return;
		//   }
		//   // both found - do your work
		// }
	function loop(index) {
    $elements.eq(index).fadeIn(600).delay(4500).fadeOut(600, function() { 
      loop((index + 1) % $elements.length);
    });
	}
	function hover(index) {
		$listitems.eq(index).addClass("hovered").delay(6000).removeClass("hovered", function() { 
      hover((index + 1) % $listitems.length);
    });
	}
	

	loop(0); 
	hover(0);

});

} ) ( jQuery );