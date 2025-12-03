class Outside{
  PImage outside;
  PVector pos;
  boolean guyMoveX;
  boolean guyMoveY;
  PVector tracker;
  Grave grave;
  
  
  Outside(float x, float y){
  outside = loadImage("outside.png");
  pos = new PVector (x,y);
  guyMoveX = true;
  guyMoveY = false; 
  tracker = new PVector(x,y);
  grave = new Grave(680,15,"grave1");
  }
  
  void display(){
  image(outside,pos.x,pos.y);
  grave.display(pos);
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
