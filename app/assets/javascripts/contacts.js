// hide dropdown when clicking on other option to fill out input
// $( "#type_other_input" ).keypress(function() {
//     $('#type_dropdown').removeClass();
// });

// $(document).ready(function() {

// 	var dropdown = $(".type_dropdown")
// 	var input = $(".type_other_input")

// 	dropdown.change(function(){   

//   	if(dropdown.val() == 'Other') {
//     	input.show();
//   	}
//     else {
//     	input.hide();
//     }
// });
	$(document).ready(function() {   
$('.type').change(function(){   
if($('.type').val() == "Other")   
   {   
   $('.other').show();    
   }   
else 
   {   
   $('.other').hide();      
   }   
});   
});   
// $(document).ready(function() {
// $('#type_dropdown').change(function(){   
// if($('#type_dropdown').val() === 'Other')   
//    {   
//    $('#type_other_input').show();    
//    }   
// else 
//    {   
//    $('#type_other_input').hide();      
//    }   
// });  
// });

  	