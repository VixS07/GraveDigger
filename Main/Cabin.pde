
class Cabin{

PImage wall;
PImage floor;
PImage sigil;

PVector wallPosition;
PVector floorPosition;
  Cabin(float x, float y){
    wall = loadImage("Cabin wall.png");
    floor = loadImage("cabin floor.png");
    sigil = loadImage("sigil.png");
    //array length perviousely calculated based on size of image, and size of canvas
    wallPosition = new PVector(x,y);
    floorPosition = new PVector(x,y);
  }
  
  void display(){
  //floor
  image(floor,0,180);
  //assign values so all the floor png positions draws the floorboards across the entire floor
  //x position
  for(int i = 0; i <= width; i += 100){
  floorPosition.x = i;
  //y possition
    for(int j = 180; j < height; j +=70){
      floorPosition.y=j;
      image(floor,floorPosition.x,floorPosition.y,100,70);
    }
  }
  
  //wall
  //assign values for all the wall png positions so it draws logs across the wall
  //x position
  for(int i = 0; i <= width; i += 50){
  wallPosition.x = i;
  //y possition
    for(int j = 0; j < 180; j +=45){
      wallPosition.y=j;
      image(wall,wallPosition.x,wallPosition.y,50,45);
    }
  }
  
  //sigil
  image(sigil,30,250,200,200);
  }
  
  void movement(){
  
  }
}
