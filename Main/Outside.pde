class Outside{
  PImage outside;
  PVector pos;
  boolean guyMoveX;
  boolean guyMoveY;
  PVector tracker;
  
  
  Outside(float x, float y){
  outside = loadImage("outside.png");
  pos = new PVector (x,y);
  guyMoveX = true;
  guyMoveY = false; 
  tracker = new PVector(x,y);
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

  


}
