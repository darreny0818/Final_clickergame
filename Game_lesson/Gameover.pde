void gameover () {

  gameover.play();
  mario.pause();
  newworld.pause();
  
  shauny.pause();
  background(255, 0, 0);

  stroke(0);
  textSize(72);
  text("GAME OVER", 400, 250);  

  fill(0);
  rect(400, 500, 250, 80);
  rect(400, 600, 250, 80);

  textSize(40);
  fill(255);
  stroke(255);

  text("TRY AGAIN", 400, 500);
  text("HOME", 400, 600);
  
}

void gameoverClicks () {

  if(mouseX > 275 && mouseX < 525 && mouseY < 540 && mouseY > 460) {
    mode = GAME;
    lives = 3;
    score = 0;
    gameover.pause();
    gameover.rewind();
    newworld.rewind();
    newworld.play();
  }

  if(mouseX > 275 && mouseX < 525 && mouseY < 640 && mouseY > 560) {
    mode = INTROSCREEN;
    lives = 3;
    score = 0;
    shauny.play();
    gameover.pause();
    gameover.rewind();
  }
  
}
