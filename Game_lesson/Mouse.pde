void mouseReleased () {

  if (mode == INTROSCREEN) {
    introClicks ();
  } else if(mode == PAUSESCREEN) {
    pauseClicks();
  } else if(mode == GAME) {
    gameClicks();
  } else if(mode == GAMEOVER) {
    gameoverClicks();
  } else if(mode == OPTIONS) {
    optionsClicks();
  }

}
