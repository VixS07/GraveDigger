class Cabin{
PImage bed;
PImage wall;
PImage floor;
PImage desk;
PImage sigil;

PVector wallPosition;
PVector floorPosition;
  Cabin(float x, float y){
    bed = loadImage("cabin bed.png");
    wall = loadImage("Cabin wall.png");
    floor = loadImage("cabin floor.png");
    desk = loadImage("cabin desk.png");
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
  
  //bed
  image(bed,470,120,150,220);
  
  //desk
  fill(255,0,0);
  image(desk,270,260,100,180);
  
  //sigil
  image(sigil,30,250,200,200);
  }
}
