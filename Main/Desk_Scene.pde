class DeskScene{
  Ghost1 ghost1;
  PImage wall;
  PImage desk;
  PVector wallPos;
  DeskScene(float x, float y){
    wall = loadImage("Cabin wall.png");
    desk = loadImage("desk.png");
    wallPos = new PVector(x,y);
    ghost1 = new Ghost1(250,30,200,310);
  }
  
  
  void display(Bell bell){
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
  //I was originally gonna do random order for ghossts, but i dont have the time to properly implement it
  if(ghostsHelped == 1){
  ghost1.display();
  }
  
  //draw desk
  image(desk,0,340,800,190); 
    
  //draw bell
  bell.display();
  
  //draw sign
  sign.display();
  }
  


  
}
