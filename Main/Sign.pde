class Sign{
  PImage sign;
  PVector pos;
  boolean isColliding;
  float signW;
  float signH;
  
  Sign(float x, float y, float w, float h){
  pos = new PVector (x,y);
  sign = loadImage("sign.png");
  isColliding = false;
  signW = w;
  signH = h;
  }

  void display(){
  image(sign,pos.x,pos.y,signW,signH);
  
  }
  
  void checkCollision(){
   if (mouseX < pos.x + signW && 
        mouseX > pos .x &&
        mouseY < pos.y + signH && 
        mouseY > pos.y) {
    isColliding = true;
    } else {
  isColliding = false;
  }
  
}
}
