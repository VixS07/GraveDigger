class Outside{
  PImage outside;
  PVector pos;
  
  Outside(float x, float y){
  outside = loadImage("outside.png");
  pos = new PVector (x,y);
  }
  
  void display(){
  image(outside,pos.x,pos.y);
  }
  
  //void checkMap(Guy guy){

  //}

}
