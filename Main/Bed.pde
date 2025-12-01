class Bed{
PVector position;
float bedH;
float bedW;
PImage bed;

  Bed(float x, float y){
  position = new PVector(x,y);
  bedW = 150;
  bedH = 220;
  bed = loadImage("cabin bed.png");
  }
  
  void display(){
  image(bed,position.x,position.y,bedW,bedH);
  }
  
  
}
