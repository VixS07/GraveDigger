class Reset{
  Reset(){
  }
  
  //resetting all variables which have the possibility to change
  // and reinstating the objects just in case
  //divided up by their class
  void redo(){
  //main
  cabin = new Cabin(0,0);
  guy = new Guy(600,400);
  desk = new Desk(270,260);
  bed = new Bed(470,120);
  rug = new Rug(500,430);
  ending1 = new Ending1();
  interaction = new Interaction();
  gameScreenFreeze = false;
  deskScene = new DeskScene(0,0);
  bell = new Bell(550,360,90,70);
  sign = new Sign(50,220,150,120);
  //outside
  isOutside = false;
  outside = new Outside(0,0);
  //graves
  graves = new Grave[5];
  house = new House(40,0,430,250);
  hasGhost = false;
  drawPlace=false;
  //assign for graves at y = 15
  for(int i = 0; i <=2; i++){
  int j = 680 + (i*300);
  graves[i] = new Grave (j, 15, 110, 210, "grave" + (i+1), i);
  }
  //assign for graves at y = 760
  for(int i = 3; i <=4; i++){
  int j = 190 + ((i-3)*620);
  graves[i] = new Grave (j, 760, 110, 190, "grave" + (i+1), i);
  }
  //Bed
  bed.isColliding = false;
  
  //Bell
  bell.isColliding = false;
  bell.canClick = true;
  
  //Desk
  desk.isColliding = false;
  
  //Graves
  //Graves
  for (int i = 0; i < graves.length; i++) {
    graves[i].isColliding = false;
  }
  
  //guy
  guy.canMove = true;
  
  //house
  house.isColliding = false;
  
  //Interction
  interaction.showDesk = false;
  interaction.showEnd = false;
  
  //outside
  outside.guyMoveX = true;
  outside.guyMoveY = true; 
  outside.anyColliding = false;
  
  //sign
  sign.isColliding = false;
  }
}
