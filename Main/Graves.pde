class Grave{
  PVector pos;
  PImage grave;
  int id;
  float graveW;
  float graveH;
  boolean isColliding;
  
  Grave(float x, float y, float w, float h, String name, int num){
  pos = new PVector(x,y);
  grave = loadImage(name + ".png");
  id = num;
  graveW = w;
  graveH = h;
  isColliding=false;
  }
  
  void display(PVector outsidePos){
  image(grave,pos.x + outsidePos.x,pos.y + outsidePos.y,graveW,graveH);
  }
  
  void checkCollision(PVector guyPos, float guyW, float guyH, PVector outsidePos){
    if (guyPos.x < (pos.x+outsidePos.x) + (graveW +18) && //increasse the hitbox forr the right sides to accomadate for blank pixels in the guy image
        guyPos.x + guyW > ((pos .x+outsidePos.x) +68) &&
        guyPos.y < (pos.y+outsidePos.y) + (graveH-50) && //shrink the grave h a bit so the guy can walk slightly into the image. helps with prespective
        guyPos.y + guyH > ((pos.y+outsidePos.y) + 100)){
    isColliding = true;
    } else {
  isColliding = false;
  }
}

  //checking to see if guy is colliding with any graves
}
