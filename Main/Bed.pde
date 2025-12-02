class Bed{
PVector position;
float bedH;
float bedW;
PImage bed;
boolean isColliding;

  Bed(float x, float y){
  position = new PVector(x,y);
  bedW = 150;
  bedH = 220;
  bed = loadImage("cabin bed.png");
  isColliding = false;
  }
  
  void display(){
  image(bed,position.x,position.y,bedW,bedH);
  }
  
  void checkCollision(PVector guyPos, float guyW, float guyH){
    if (guyPos.x < position.x + (bedW + 20) && //shrink the hitbox forr the ssides to accomadate for blank pixels in the guy image
        guyPos.x + guyW > (position .x +70) &&
        guyPos.y < position.y + (bedH-50) && //shrink the bed h a bit so the guy can walk slightly into the image. helps with prespective
        guyPos.y + guyH > (position.y + 100)){
    isColliding = true;
    
    } else {
  isColliding = false;
  }
}
  
  
}
