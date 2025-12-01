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
    if (keyCode == DOWN) {
      //direction = -1;
      position.y += 2; 
      isWalking = true;
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
    image(guyWalk[guyFrame],0,0,90,130);
  } else {
    image(guy, 0, 0,90,130);
  }
  popMatrix();
  }

}
