$(document).ready(function(){

 var $elements = $('#loopOne, #loopTwo, #loopThree, #loopFour');
 var $listitems = $('#listone, #listtwo, #listthree, #listfour');

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
    // Get the element with that index and do the animation
    $elements.eq(index).fadeIn(800).delay(4500).fadeOut(800, function() { 

        // Kind of recursive call, increasing the index and keeping in the
        // the range of valid indexes
      loop((index + 1) % $elements.length);
    });
	}
	function hover(index) {
		$listitems.eq(index).addClass("hovered").delay(6000).removeClass("hovered", function() { 
        // Kind of recursive call, increasing the index and keeping in the
        // the range of valid indexes
      hover((index + 1) % $listitems.length);
    });
	}
	
	// processImages();
	loop(0); 
	hover(0);

// $.repeatQueryRegister(5000).$('#container img:first').fadeOut().appendTo('#container').fadeIn();

        // function loop(){
        //     $('#loopOne').fadeIn(0).fadeOut(8000);
        //     $('#loopTwo').delay(2000).fadeIn(6000).fadeOut(5000);
        //     $('#loopTree').delay(10000).fadeIn(2000).fadeOut(16000);
        //     $('#loopFour').delay(12000).fadeIn(16000).fadeOut(5000);
        // }
        // loop(0);

  // var $elements = $('#loopOne, #loopTwo, #loopThree, #loopFour');

	// function loop() {
	// 	$("#listone").trigger("mouseover");
 //    $('#loopOne').fadeIn(1000).delay(4000).fadeOut(1000);
 //    $("#listtwo").trigger("mouseover");
 //    $('#loopTwo').fadeIn(1000).delay(4000).fadeOut(1000);
 //    $("#listthree").trigger("mouseover");
 //    $('#loopTree').fadeIn(1000).delay(4000).fadeOut(1000);
 //    $("#listfour").trigger("mouseover");
 //    $('#loopFour').fadeIn(1000).delay(4000).fadeOut(1000);
 //    // $("#link").trigger("mouseover");
 //    };

	// loop(); // start with the first element

 //  $next = 1;			// fixed, please do not modfy;
	// $current = 0;		// fixed, please do not modfy;
	// $interval = 4000;	// You can set single picture show time;
	// $fadeTime = 800;	// You can set fadeing-transition time;
	// $imgNum = 5;		// How many pictures do you have
 
	// $(document).ready(function(){
	// 	//NOTE : Div Wrapper should with css: relative;
	// 	//NOTE : img should with css: absolute;
	// 	//NOTE : img Width & Height can change by you;
	// 	$('.fadeImg').css('position','relative');
	// 	$('.fadeImg img').css({'position':'absolute','width':'100%','height':'auto'});
 
	// 	nextFadeIn();
	// });
 
	// function nextFadeIn(){
	// 	//make image fade in and fade out at one time, without splash vsual;
	// 	$('.fadeImg img').eq($current).delay($interval).fadeOut($fadeTime)
	// 	.end().eq($next).delay($interval).hide().fadeIn($fadeTime, nextFadeIn);
		    
	// 	// if You have 5 images, then (eq) range is 0~4 
	// 	// so we should reset to 0 when value > 4; 
	// 	if($next < $imgNum-1){ $next++; } else { $next = 0;}
	// 	if($current < $imgNum-1){ $current++; } else { $current = 0; }
	// };
});