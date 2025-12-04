class Outside{
  PImage outside;
  PVector pos;
  boolean guyMoveX;
  boolean guyMoveY;
  PVector tracker;
  boolean anyColliding;
  
  
  Outside(float x, float y){
  outside = loadImage("outside.png");
  pos = new PVector (x,y);
  guyMoveX = true;
  guyMoveY = true; 
  tracker = new PVector(x,y);
  anyColliding = false;
  }
  
  void display(){
  image(outside,pos.x,pos.y);
  }
  
  void checkMap(){
  // Horizontal check
  if (tracker.x >= 40 && tracker.x <= 305) {
  guyMoveX = false;   // map moves horizontally
  } else {
  guyMoveX = true;    // guy moves horizontally
  }

  // Vertical check
  if (tracker.y <= -2 && tracker.y >= -158) {
  guyMoveY = false;   // map moves vertically
  } else {
  guyMoveY = true;    // guy moves vertically
  }
  }
  
  //found the solution to breaking out of a loop here: 
  //https://stackoverflow.com/questions/48829828/if-the-condition-of-an-if-statement-is-true-can-you-stop-execution
  void collidesWithAny(Grave[] graves, PVector newPos, float guyW, float guyH) {
  //reset the boolean before checking again
  anyColliding = false; 
  for (int i = 0; i < graves.length; i++) {
    graves[i].checkCollision(newPos,guyW,guyH,pos);
    if (graves[i].isColliding) {
      anyColliding = true;
      break; //stop the loop once true happens
    } 
  }
}



}
