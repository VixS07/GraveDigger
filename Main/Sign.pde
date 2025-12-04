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
   if (mouseX < pos.x + signW/2 && 
        mouseX > pos .x &&
        mouseY < pos.y + signH-20 && 
        mouseY > pos.y) {
    isColliding = true;
    hasGhost = true;
    println(bell.canClick);
    interaction.showDesk = false;
    guy.canMove = true;
    } else if (
    mouseX < pos.x + signW && 
    mouseX > pos .x &&
    mouseY < pos.y + signH-20 && 
    mouseY > pos.y){
  isColliding = false;
  bell.canClick = true;
  println(bell.canClick);  
  }
  
}
}
