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
boolean canMove;

boolean upPressed;
boolean downPressed; 
boolean leftPressed;
boolean rightPressed;

PImage leave;
PImage ghosty;
  Guy(float x, float y){
    guyW = 90;
    position = new PVector(x,y);
    guy = loadImage("down1.png");
    //create the arrays for the animation
    guyWalkDown = new PImage[4];
    guyWalkSide = new PImage[6];  
    guyWalkUp = new PImage[4];
    canMove = true;
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
    
    leave = loadImage("leave.png");
    ghosty = loadImage("hasghost.png");
    
  }
  
  void display(){
    //ghost that follows you if you say yes to one, goes away once theyre buried
    if(hasGhost){
    image(ghosty,position.x-100,position.y-100,50,50);
    }
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
  
  void movement(Desk desk, Bed bed, Rug rug){
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
        position.y+=3;
      }
    }
    //left (a)
    if (leftPressed && position.x > 16 && canMove) {
      direction = -1;
      PVector newPos = new PVector (position.x - 2,position.y);
      desk.checkCollision(newPos,guyW,130);
      bed.checkCollision(newPos,guyW,130);
      if(!bed.isColliding && !desk.isColliding){
        //move 2 pixels left
        position.x-=3;
      }  
    }
    // up (w)
    if (upPressed && position.y > 130 && canMove) {
      PVector newPos = new PVector (position.x,position.y -2);
      desk.checkCollision(newPos,guyW,130);
      bed.checkCollision(newPos,guyW,130);
      if(!bed.isColliding && !desk.isColliding){
        //move 2 pixels up
        position.y-=3;
      }
    }
    //right (d)
    if (rightPressed && position.x < width-16 && canMove) {
      direction = 1;
      PVector newPos = new PVector (position.x+2,position.y);
      desk.checkCollision(newPos,guyW,130);
      bed.checkCollision(newPos,guyW,130);
      if(!bed.isColliding && !desk.isColliding){
        //move 2 pixels rright
        position.x+=3;
      }
    }
    
    //check for rug overlap, and send signifier
    PVector newPos = new PVector (position.x,position.y);
    rug.checkCollision(newPos,guyW,130);
    if(rug.isColliding){
    image(leave,300,0,200,50);
  
  }
  }
  
  void movementOutside(Outside outside, Grave[] graves){
    //make it so that regardless on if he can move or not, 
    //when the right button is pressed it plays the animation
    if (upPressed || downPressed || leftPressed || rightPressed){
        isWalking = true;
    } else {
        isWalking = false;
    }
    //divided up by checks for x and y
    //vertical check 
    //down (s)
    if(downPressed && position.y<height - 65 && canMove){
        //estimate where guy would be in 2 pixels
        PVector newPos = new PVector (position.x,position.y +2);
        house.checkCollision(newPos,guyW,130,outside.pos);
        outside.collidesWithAny(graves,newPos,guyW,130);
        if(!outside.anyColliding&& !house.isColliding){
          outside.tracker.y-=1;
        if(!outside.guyMoveY){
            outside.pos.y-=3;
            outside.pos.y = constrain(outside.pos.y, -outside.outside.height + height, 0);

        } else if (outside.guyMoveY){
            position.y+=3;
        }
    }
  }
    //up (w)
    if(upPressed && position.y > 0 && canMove){
        //estimate where guy would be in 2 pixels
        PVector newPos = new PVector (position.x,position.y -2);
        outside.collidesWithAny(graves,newPos,guyW,130);
        house.checkCollision(newPos,guyW,130,outside.pos);
        if(!outside.anyColliding&& !house.isColliding){
          outside.tracker.y+=1;
        if(!outside.guyMoveY){
            outside.pos.y+=3;
            outside.pos.y = constrain(outside.pos.y, -outside.outside.height + height, 0);
        } else if (outside.guyMoveY){
            position.y-=3;
        }
    }
  }
    
    //horrizontal check
    //left (a)
    if(leftPressed && position.x > 16 && canMove){
        direction = -1;
        //estimate where guy would be in 2 pixels
        PVector newPos = new PVector (position.x-2,position.y);
        outside.collidesWithAny(graves,newPos,guyW,130);
        house.checkCollision(newPos,guyW,130,outside.pos);
        if(!outside.anyColliding&& !house.isColliding){
          outside.tracker.x-=1;
        if(!outside.guyMoveX){
            outside.pos.x+=3;
            outside.pos.x = constrain(outside.pos.x, -outside.outside.width + width, 0);
        } else if (outside.guyMoveX){
            position.x-=3;
        }
    }
    }
    //right(d)
    if(rightPressed && position.x < 680 && canMove){
      direction = 1;
        //estimate where guy would be in 2 pixels
        PVector newPos = new PVector (position.x+2,position.y);
        outside.collidesWithAny(graves,newPos,guyW,130);
        house.checkCollision(newPos,guyW,130,outside.pos);
        if(!outside.anyColliding && !house.isColliding){
          outside.tracker.x+=1;
        if(!outside.guyMoveX){
            outside.pos.x-=3;
            outside.pos.x = constrain(outside.pos.x, -outside.outside.width + width, 0);
        } else if (outside.guyMoveX){
            position.x+=3;
        }
    }
    }
    
}
  
}
