class Grave{
  PVector pos;
  PImage grave;
  
  Grave(float x, float y, String name){
  pos = new PVector(x,y);
  grave = loadImage(name + ".png");
  }
  
  void display(PVector outsidePos){
  image(grave,pos.x + outsidePos.x,pos.y + outsidePos.y,110,210);
  }
}
