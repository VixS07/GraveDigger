class DeskScene{
  PImage wall;
  PImage desk;
  PImage grim;
  PVector wallPos;
  Ghosts[] ghost;
  int order;
  boolean drawGhost;
  
  DeskScene(float x, float y){
    wall = loadImage("Cabin wall.png");
    desk = loadImage("desk.png");
    wallPos = new PVector(x,y);
    ghost = new Ghosts[5];
    ghost[0] = new Ghosts(250,30,300,310,"ghost0",3);
    ghost[1] = new Ghosts(250,30,300,310,"ghost1",5);
    ghost[2] = new Ghosts(250,30,300,310,"ghost2",4);
    ghost[3] = new Ghosts(250,30,300,310,"ghost3",1);
    ghost[4] = new Ghosts(250,30,300,310,"ghost4",1);
    order = 0;
    drawGhost = false;
    grim = loadImage("grim.png");
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
  if(order == 1 && deskScene.drawGhost){
    ghost[0].display();
  } else if (order == 2 && deskScene.drawGhost){
    ghost[1].display();
  } else if(order == 2 && deskScene.drawGhost){
    ghost[2].display();
  } else if(order == 3 && deskScene.drawGhost){
    ghost[3].display();
  } else if(order == 4 && deskScene.drawGhost){
    ghost[4].display();
  } else if(order >= 5 && deskScene.drawGhost){
    canGet = false;
    image(grim,250,30,300,310);
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
