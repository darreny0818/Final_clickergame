void introscreen () {
  
  mario.pause();
  shauny.play();
  newworld.pause();
  
  background (255);

  fill(0);
  textSize(72);
  text("CLICKER GAME", 400, 400);

  fill(0);
  rect(400, 610, 300, 80);
  
  textSize(60);
  fill(255);
  text("OPTIONS", 400, 600);
  
  if(shauny.isPlaying() == false) {
  shauny.pause();
  shauny.rewind();
  shauny.play();
  }

}

void introClicks () {

  //start button

  if (mouseX > 250 && mouseX < 550 && mouseY > 570 && mouseY < 650) {
   mode = OPTIONS;
 }
 
}
