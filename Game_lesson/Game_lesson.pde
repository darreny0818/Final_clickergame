import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//final locks the variable
//change variable to all caps


Minim minim;
AudioPlayer music, shauny, gameover, bump, mario, gooddoc, newworld;

int mode;
final int INTROSCREEN = 0;
final int PAUSESCREEN = 1;
final int GAME = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;

//target variables

float x, y;
int score, lives;
float vx, vy; //velocity variables
int highscore;

int skin1x = 100;
int skin2x = 100;

int stroke1 = 1;
int stroke2 = 1;

color color2 = 255;
int slider = 250;
float size = 100;

void setup () {
  
  size(800, 800);
  
  minim = new Minim(this); 
  music = minim.loadFile("Coin.mp3.wav");
  shauny = minim.loadFile("Shauny.mp3");
  gameover = minim.loadFile("Gameover_1.wav");
  bump = minim.loadFile("Bump.wav");
  mario = minim.loadFile("Mariobros.mp3");
  gooddoc = minim.loadFile("Gooddoc.mp3");
  newworld = minim.loadFile("Newworld.mp3");
  

  mode = INTROSCREEN;
  textAlign(CENTER, CENTER);
  rectMode (CENTER);  
  
  //initialize target
  x = width/2;
  y = height/2;
  vx = random (-3, 3);
  vy = random (-3, 3);

  score = 0;
  lives = 3;
  
  highscore = 0;
}

void draw () {  

  if (mode == INTROSCREEN) {
    introscreen ();
  } else if (mode == PAUSESCREEN) {
    pausescreen();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Mode Error: Mode is " + mode);
  }
}
