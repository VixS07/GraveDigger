class Guy{
//code gotton off of zombie walk on slate, with modifications
PImage guy;
int guyW;
PImage guyWalk[];
boolean isWalking;
int guyFrame;
PVector position;
int direction = 1;
boolean canMove = true;

boolean showEnding1;
  Guy(float x, float y){
    guy = loadImage("down1.png");
    
    guyWalk = new PImage[4];
    for(int i = 0; i < guyWalk.length;i++){
    //  guyWalk[i] = loadImage("down" + (i+1) + ".png");
    }
    guyW = 60;
    position = new PVector(x,y);
    showEnding1 = false;
  }
  
  void display(){
  
  
  //each frame of the snaimation every 5 frames
  if (frameCount % 10 == 0){
    guyFrame = (guyFrame + 1) % guyWalk.length;
  }
  
  pushMatrix();
  translate(position.x,position.y);
  if((key == 's' || key == 'S') && isWalking){
    //draw in the walking down animation
    //image(guyWalk[guyFrame],0,0,60,130);
    image(guy, 0, 0,guyW,130);
  } else {
    //draw in the idle guy image
    image(guy, 0, 0,guyW,130);
  }  
  popMatrix();

  }
  
  void movement(Desk desk, Bed bed){
  if (keyPressed) {
      //make it so that regardless on if he can move or not, 
      //when the right button is pressed it plays the animation
      isWalking = true;
      //make it so that he cant walk offscreen
      //anticipate for accidental caps lock
      //down (s)
    if ((key == 's' || key == 'S') && position.y<height-130 && canMove) {
        position.y+=2;
      }
    //left (a)
    if ((key == 'a' || key == 'A') && position.x > -16 && canMove) {
        position.x-=2;
      }  
    // up (w)
    if ((key == 'w' || key == 'W') && position.y > 70 && canMove) {
     
        position.y-=2;
      }
    //right (d)
    if ((key == 'd' || key == 'D') && position.x > -16 && canMove) {
      
        position.x+=2;
      }
  } else {
    isWalking = false;
  }
  }
}
  
