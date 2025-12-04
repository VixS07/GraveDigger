class DeskScene{
  PImage wall;
  PImage desk;
  PVector wallPos;
  Ghosts[] ghost;
  int order;
  boolean drawGhost;
  
  DeskScene(float x, float y){
    wall = loadImage("Cabin wall.png");
    desk = loadImage("desk.png");
    wallPos = new PVector(x,y);
    ghost = new Ghosts[4];
    ghost[1] = new Ghosts(250,30,300,310,"ghost1",3);
    ghost[2] = new Ghosts(250,30,300,310,"ghost2",5);
    order = 0;
    drawGhost = false;
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
  if(drawGhost){
  if(order == 1 && !hasGhost){
  ghost[1].display();
  } else if (order == 2 && !hasGhost){
  ghost[2].display();
  }
  }
  
  //draw desk
  image(desk,0,340,800,190); 
    
  //draw bell
  bell.display();
  
  //sign stuff
  sign.display();
  }
  


  
}
