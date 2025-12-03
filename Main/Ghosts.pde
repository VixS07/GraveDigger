class Ghosts{
  PImage ghost;
  PVector pos;
  float ghostW;
  float ghostH;
  int id;
  
  Ghosts(float x, float y, float w, float h, String name, int num){
    ghost = loadImage(name + ".png");
    pos = new PVector (x,y);
    ghostW=w;
    ghostH=h;
    id = num;
  }
  
  void display(){
  image(ghost,pos.x,pos.y,ghostW,ghostH);
  }
}
