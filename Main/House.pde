class House{
  PImage house;
  PVector pos;
  float houseW;
  float houseH;
  
  House(float x, float y, float w, float h){
  pos = new PVector (x,y);
  houseW = w;
  houseH = h;
  house = loadImage("house.png");
  }
  
  void display(){
  
  }

}
