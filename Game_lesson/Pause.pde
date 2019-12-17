void pausescreen () {  

  shauny.pause();
  mario.pause();
  newworld.pause();
  gooddoc.play();
  
  background(0);

  fill(#5A5B5F);
  stroke(0);
  rect(400, 500, 200, 75);
  rect(400, 600, 200, 75);

  textSize(50);
  stroke(0);
  fill(0);
  text("HOME", 400, 500);
  text("RESUME", 400, 600);

  fill(255);
  textSize(72);
  stroke(255);
  text("PAUSE", 400, 250);
  
}

void pauseClicks () {

  if (mouseX < 500 && mouseX > 300 && mouseY < 637.5 && mouseY > 562.5) {
    mode = GAME;
    gooddoc.pause();
    gooddoc.rewind();
    newworld.play();
  }

  if (mouseX < 500 && mouseX > 300 && mouseY < 537.5 && mouseY > 462.5) {
    mode = INTROSCREEN;
    lives = 3;
    score = 0;
    shauny.rewind();
    gooddoc.pause();
    gooddoc.rewind();
  }
  
}
