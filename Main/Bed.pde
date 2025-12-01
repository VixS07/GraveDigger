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
    if (guyPos.x < position.x + bedW &&
        guyPos.x + guyW > position .x &&
        guyPos.y < position.y + (bedH-100) && //shrink the bed h a bit so the guy can walk slightly into the image. helps with prespective
        guyPos.y + guyH > position.y){
    isColliding = true;
    
    } else {
  isColliding = false;
  }
}
  
  
}
