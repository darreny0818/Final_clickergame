void options () {
  
  shauny.pause();
  mario.play();
  newworld.pause();
  
  background (255);

  fill(0);
  rect(400, 610, 250, 80);

  textSize(60);
  fill(255);
  text("START", 400, 600);

  fill(0);
  textSize(30);
  text("PLEASE SELECT SKIN", 400, 200);

  strokeWeight(stroke1);
  stroke(0);
  fill(0);
  ellipse(300, 320, skin1x, skin1x);
  fill(255);
  strokeWeight(stroke2);
  ellipse(500, 320, skin2x, skin2x);

  strokeWeight(5);
  stroke(0);
  fill(0);
  line(250, 450, 550, 450);

  strokeWeight(1);
  fill(255);
  stroke(0);
  ellipse(slider, 450, 50, 50);
  strokeWeight(1);

  if (dist(300, 320, mouseX, mouseY) < 50) {
    skin1x = 115;
    stroke1 = 5;
    skin2x = 100;
    stroke2 = 1;
  } else {
    skin1x = 100;
    stroke1 = 5;
  }

  if (dist(slider, 450, mouseX, mouseY) < 25 && mousePressed) {
    slider = mouseX;
  }

  if (dist(500, 320, mouseX, mouseY) < 50) {
    skin2x = 115;
    stroke2 = 5;
    skin1x = 100;
    stroke1 = 1;
  } else {
    skin2x = 100;
    stroke2 = 1;

    if (slider < 250) {
      slider = 250;
    }
    if (slider > 550) {
      slider = 550;
    }
  }
  
  size = map(slider, 250, 550, 40, 300);
}

void optionsClicks () { 

  if (mouseX > 275 && mouseX < 525 && mouseY > 550 && mouseY < 650) {
    mode = GAME;
    newworld.rewind();
    newworld.play();
  }

  if (dist(300, 320, mouseX, mouseY) < 50) {
    color2 = 0;
    skin1x = 115;
    stroke1 = 5;
  }

  if (dist(500, 320, mouseX, mouseY) < 50) {
    color2 = 255;
    skin2x = 115;
    stroke2 = 5;
  }
}
