$(document).ready(function(){

  //On crée la piste de course
  var trackSize = 20;
  generateTrack(trackSize);

  //On lance le jeu
  runGame();

});


function generateTrack(trackSize){
  // On crée les tds de la piste
  for (var i = 0; i < trackSize - 1; i++){
    $("#track-1").append("<td></td>");
    $("#track-2").append("<td></td>");
  }
  // On ajoute la finish line
  $("#track-1").append("<td class='finish-line'></td>");
  $("#track-2").append("<td class='finish-line'></td>");
}


function runGame(){
  //Quand un jouer tape sur une touche clavier..
  $(document).on("keyup", function(event){

    //..On fait avancer les wagons en fonction de la touche
    if (event.keyCode == 65){
      // on fait avancer wagon 1 si la touche "A" a été entrée
      $("#track-1 .here").removeClass("here").next().addClass("here");
    }
    if (event.keyCode == 80){
      // on fait avancer wagon 2 si la touche "P" a été entrée
      $("#track-2 .here").removeClass("here").next().addClass("here");
    }

    // on check si le joueur arrive sur la finish line
    if ($("#track-1 .here").hasClass("finish-line")){
      $(".here").removeClass("here");
      $("#game-box .player-1").fadeIn(1000);
    }

    if ($("#track-2 .here").hasClass("finish-line")){
      $(".here").removeClass("here");
      $("#game-box .player-2").fadeIn(1000);
    }
  })
}

