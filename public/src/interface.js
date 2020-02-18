$(document).ready(function(){

  // jQuery methods go here...
  $("#howToPlayIndexButton").click(function(){
   $("#howToPlayInstructions").text("Each question has 4 choices... select the one you think is right!")
   $("#howToPlayIndexButton").hide()
 });
 $('#question').flowtype({
  fontRatio: 10
 });


});
