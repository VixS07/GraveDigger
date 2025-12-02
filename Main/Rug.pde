class Rug{
PImage rug;
PVector position;
float rugW;
float rugH;
  Rug(float x, float y){
  rug = loadImage("rug.png");
  position = new PVector(x,y);
  rugW = 200;
  rugH = 100;
  }

  void display(){
  image(rug,position.x,position.y,rugW,rugH);
  }


}
