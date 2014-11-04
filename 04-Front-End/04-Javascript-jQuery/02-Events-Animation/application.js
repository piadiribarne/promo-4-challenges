$(function(){




 $('#message').hide();

 $('#message').delay(1000).slideDown([2000]);

 $('#message').on('click', function(the_event) {
   $(this).slideUp()});

 $('#message-wrapper').mouseenter( function() {
   $('#message').slideDown();
 }).mouseleave(function(){
   $('#message').slideUp();
 });

});






