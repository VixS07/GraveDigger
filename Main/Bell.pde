class Bell{
  PImage bell;
  boolean isColliding;
  PVector position;
  float bellW;
  float bellH;
  
  Bell(float x, float y,float w,float h){
  bell = loadImage("bell.png");
  position = new PVector(x,y);
  isColliding = false;
  bellW = w;
  bellH = h;
  }
  
  void display(){
  image(bell,position.x,position.y,bellW,bellH);
  }
  
  void checkCollision(){
   if (mouseX < position.x + bellW && 
        mouseX > position .x &&
        mouseY < position.y + bellH && 
        mouseY > position.y) {
    isColliding = true;
    } else {
  isColliding = false;
  }
}
}
