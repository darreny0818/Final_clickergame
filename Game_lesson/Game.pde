void game () {
  
  shauny.pause();
  mario.pause();
  newworld.play();
  
  background(255); 
  textSize(30);

  //scoreboard
  fill(0);
  text("Score: " + score, 98, 50);
  text("lives: " + lives, 90, 110);
  text("Highscore: " + highscore, 132, 80);
  
  if (score < highscore) {
    highscore = highscore;
  }
  
  if (score > highscore) {
    highscore = score;
  }

  //drawing target
  stroke(0);
  fill(color2);
  strokeWeight(3);
  ellipse(x, y, size, size);

  //pausebutton

  strokeWeight(1);
  stroke(0);
  fill(#84858E);
  ellipse(750, 50, 48, 48);

  fill(0);
  rect(742, 50, 10, 25);
  rect(758, 50, 10, 25);

  //moving and bouncing
  x = x + vx;
  y = y + vy;  

  //bonucing off of top or bottom
  if (y < size/2 || y > height - size/2) vy = -vy;
  if (x< size/2 || x > width - size/2) vx = -vx;
}

void gameClicks () {

  if (dist(mouseX, mouseY, x, y) < size/2) {    
    score = score + 1;
    music.play();
    music.rewind();
  } else {
    lives = lives -1;
    bump.play();
    bump.rewind();
  }
    if (lives == 0) {
      mode = GAMEOVER;
  }  

  if (dist(mouseX, mouseY, 750, 50) < 24) {
    lives = lives + 1;
    bump.pause();
    bump.rewind();
  }

  if (dist(750, 50, mouseX, mouseY) < 24) {
    mode = PAUSESCREEN;
  }
}
