class Guy{
//code gotton off of zombie walk on slate, with modifications
PImage guy;
int guyW;
PImage guyWalkDown[];
PImage guyWalkSide[];
PImage guyWalkUp[];
boolean isWalking;
int guyFrameDown;
int guyFrameSide;
int guyFrameUp;
PVector position;
int direction = 1;
boolean canMove = true;

boolean upPressed;
boolean downPressed; 
boolean leftPressed;
boolean rightPressed;

  Guy(float x, float y){
    guyW = 90;
    position = new PVector(x,y);
    guy = loadImage("down1.png");
    //create the arrays for the animation
    guyWalkDown = new PImage[4];
    guyWalkSide = new PImage[6];  
    guyWalkUp = new PImage[4];
    //asssigning all the images into the array for walking down animation
    for(int i = 0; i < guyWalkDown.length;i++){
      guyWalkDown[i] = loadImage("down" + (i+1) + ".png");
    }
    //asssigning all the images into the array for walking to the side animation
    for(int i = 0; i < guyWalkSide.length;i++){
      guyWalkSide[i] = loadImage("sidewalk" + (i+1) + ".png");
    }
    //asssigning all the images into the array for walking up animation
    for(int i = 0; i < guyWalkUp.length;i++){
      guyWalkUp[i] = loadImage("walkUp" + (i+1) + ".png");
    }
  }
  
  void display(){
  //each frame of the animation every 5 frames for walking down
  if (frameCount % 10 == 0){
    guyFrameDown = (guyFrameDown + 1) % guyWalkDown.length;
    guyFrameSide = (guyFrameSide + 1) % guyWalkSide.length;
    guyFrameUp = (guyFrameUp + 1) % guyWalkUp.length;
  }
  
  pushMatrix();
  translate(position.x,position.y);
  scale(direction,1);
  imageMode(CENTER);
  //walking down check and animation
  if(downPressed && isWalking){
    //draw in the walking down animation
    image(guyWalkDown[guyFrameDown],0,0,guyW,130);
  } //walking to the side check and animation
  else if((leftPressed || rightPressed) && isWalking){
    //draw in the walking down animation
    //check for the direction
    if(direction == 1){
      //centerr the image so when it flips theres no jump
    image(guyWalkSide[guyFrameSide],0,0,guyW,130);
     //reset so it doesnt mess up the other images
  } else {
    image (guyWalkSide[guyFrameSide], 0,0,guyW,130);
  }
  } //walking up check and animation
  else if(upPressed && isWalking){
    //draw in the walking down animation
    image(guyWalkUp[guyFrameUp],0,0,guyW,130);
  }
  else {
    //draw in the idle guy image
    image(guy, 0, 0,guyW,130);
  }  
  imageMode(CORNER);
  popMatrix();

  }
  
  void movement(Desk desk, Bed bed){
      //make it so that regardless on if he can move or not, 
      //when the right button is pressed it plays the animation
      if (upPressed || downPressed || leftPressed || rightPressed){
      isWalking = true;
      } else {
      isWalking = false;
      }
      //make it so that he cant walk offscreen
      //anticipate for accidental caps lock
      //down (s)
    if (downPressed && position.y<height - 65 && canMove) {
      //estimate where guy would be in 2 pixels
      PVector newPos = new PVector (position.x,position.y +2);
      //give the desk collision check the info it needs
      desk.checkCollision(newPos,guyW,130);
      bed.checkCollision(newPos,guyW,130);
      //if youre not gonna collide with the objects in 2 pixels, move that way
      if(!bed.isColliding && !desk.isColliding){
        //move 2 pixels down
        position.y+=2;
      }
    }
    //left (a)
    if (leftPressed && position.x > -16 && canMove) {
      direction = -1;
      PVector newPos = new PVector (position.x - 2,position.y);
      desk.checkCollision(newPos,guyW,130);
      bed.checkCollision(newPos,guyW,130);
      if(!bed.isColliding && !desk.isColliding){
        //move 2 pixels left
        position.x-=2;
      }  
    }
    // up (w)
    if (upPressed && position.y > 130 && canMove) {
      PVector newPos = new PVector (position.x,position.y -2);
      desk.checkCollision(newPos,guyW,130);
      bed.checkCollision(newPos,guyW,130);
      if(!bed.isColliding && !desk.isColliding){
        //move 2 pixels up
        position.y-=2;
      }
    }
    //right (d)
    if (rightPressed && position.x > -16 && canMove) {
      direction = 1;
      PVector newPos = new PVector (position.x+2,position.y);
      desk.checkCollision(newPos,guyW,130);
      bed.checkCollision(newPos,guyW,130);
      if(!bed.isColliding && !desk.isColliding){
        //move 2 pixels rright
        position.x+=2;
      }
    }
  }


}
  
