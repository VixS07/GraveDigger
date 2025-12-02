class DeskScene{
  PImage wall;
  PImage desk;
  PVector wallPos;
  DeskScene(float x, float y){
    wall = loadImage("Cabin wall.png");
    wallPos = new PVector(x,y);
  }
  
  
  void display(){
    //wall
  //assign values for all the wall png positions so it draws logs across the wall
  //x position
  for(int i = 0; i <= width; i += 50){
  wallPos.x = i;
  //y possition
    for(int j = 0; j < height; j +=45){
      wallPos.y=j;
      image(wall,wallPos.x,wallPos.y,50,45);
    }
  }
    
    }
}
