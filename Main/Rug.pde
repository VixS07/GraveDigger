class Rug{
PImage rug;
PVector position;
float rugW;
float rugH;
boolean isColliding;
  Rug(float x, float y){
  rug = loadImage("rug.png");
  position = new PVector(x,y);
  rugW = 200;
  rugH = 100;
  }

  void display(){
  image(rug,position.x,position.y,rugW,rugH);
  }
  
  void checkCollision(PVector guyPos, float guyW, float guyH){
    if (guyPos.x < position.x + rugW &&  
        guyPos.x + guyW > (position.x+100) && //make adjustments to hitboxes as needed
        guyPos.y < position.y + rugH && 
        guyPos.y + guyH > (position.y+80)){
    isColliding = true;
    } else {
  isColliding = false;
  }
}


}
