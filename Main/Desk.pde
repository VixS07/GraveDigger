class Desk{
  PImage desk;
  PVector position;
  int deskW;
  int deskH;
  boolean isColliding;

  
  Desk(float x, float y){
  desk = loadImage("cabin desk.png");
  position = new PVector (x,y);
  deskW = 100;
  deskH = 180;
  isColliding = false;
  }
  
  void display(){
  image(desk,position.x,position.y,deskW,deskH);
  }
  
   void checkCollision(PVector guyPos, float guyW, float guyH){
    if (guyPos.x < position.x + (deskW +20) && //increasse the hitbox forr the right sides to accomadate for blank pixels in the guy image
        guyPos.x + guyW > (position .x +20) &&
        guyPos.y < position.y + (deskH-100) && //shrink the desk h a bit so the guy can walk slightly into the image. helps with prespective
        guyPos.y + guyH > position.y){
    isColliding = true;
    
    } else {
  isColliding = false;
  }
}
}
