class Ghost1{
  PImage ghost;
  PVector pos;
  float ghostW;
  float ghostH;
  Ghost1(float x, float y, float w, float h){
    ghost = loadImage("ghost1.png");
    pos = new PVector (x,y);
    ghostW=w;
    ghostH=h;
  }
  
  void display(){
  image(ghost,pos.x,pos.y,ghostW,ghostH);
  }
}
