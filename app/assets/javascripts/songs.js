$(document).ready(function(){

document.addEventListener('play', function(e){
    var audios = document.getElementsByTagName('audio');
    for(var i = 0, len = audios.length; i < len;i++){
        if(audios[i] != e.target){
            audios[i].pause();
        }
    }
}, true);
//     var result = $('#result')

// result.hide().html('<%= j @result %>').fadeIn(250);
// playAudio(result);

// function playAudio(result){
//   if (result.html() === "Yes"){

//     $('#yes-audio').trigger('play')
//   }
//   else if (result.html() === "Nope."){
//     $('#no-audio').trigger('play')
//   }

// }

});
