class Guy{
//code gotton off of zombie walk on slate, with modifications
PImage guy;
PImage guyWalk[];
boolean isWalking;
int guyFrame;
PVector position;
int direction = 1;
  Guy(float x, float y){
    guy = loadImage("down1.png");
    
    guyWalk = new PImage[4];
    for(int i = 0; i < guyWalk.length;i++){
      guyWalk[i] = loadImage("down" + (i+1) + ".png");
    }
    
    position = new PVector(x,y);
  }
  
  void display(){
    if (keyPressed) {
      //make it so that regardless on if he can move or not, 
      //when a button is pressed it plays the animation
      isWalking = true;
      //make it so that he cant walk offcreen
    if (keyCode == DOWN && position.y<height-130) {
      //direction = -1;
      position.y += 2;
    }
  } else {
    isWalking = false;
  }
  
  
  //each frame of the snaimation every 5 frames
  if (frameCount % 5 == 0){
    guyFrame = (guyFrame + 1) % guyWalk.length;
  }
  
  pushMatrix();
  translate(position.x,position.y);
  if(isWalking){
    //draw in the walking animation
    image(guyWalk[guyFrame],0,0,90,130);
  } else {
    //draw in the idle guy image
    image(guy, 0, 0,90,130);
  }
  popMatrix();
  }

}
