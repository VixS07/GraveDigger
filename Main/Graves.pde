class Grave{
  PVector pos;
  PImage grave;
  int id;
  
  Grave(float x, float y, String name, int num){
  pos = new PVector(x,y);
  grave = loadImage(name + ".png");
  id = num;
  }
  
  void display(PVector outsidePos){
  image(grave,pos.x + outsidePos.x,pos.y + outsidePos.y,110,210);
  }
}
