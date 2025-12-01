class Desk{
  PImage desk;
  PVector position;
  int deskW;
  int deskH;

  
  Desk(float x, float y){
  desk = loadImage("cabin desk.png");
  position = new PVector (x,y);
  deskW = 100;
  deskH = 180;
  }
  
  void display(){
  image(desk,position.x,position.y,deskW,deskH);
  }
  
  
}
