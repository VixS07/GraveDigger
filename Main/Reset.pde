class Reset{
  Reset(){
  }
  
  //resetting all variables which have the possibility to change
  // and reinstating the objects just in case
  //divided up by their class
  void redo(){
  //main
  gameScreenFreeze = false;
  guy = new Guy(500,400);
    //outside
  isOutside = false;
    //gen
  hasGhost = false;
  drawPlace=false;
  canGet = true;
  showTitle = true;
  
    //Bed
  bed.isColliding = false;
  
  //Bell
  bell.isColliding = false;
  bell.canClick = true;
  
  //Desk
  desk.isColliding = false;
  
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
  interaction.checkYes = false;
  interaction.checkNo = false;
  interaction.gravesTaken = 0;
  
  //outside
  outside.guyMoveX = true;
  outside.guyMoveY = true; 
  outside.anyColliding = false;
  
  //sign
  sign.isColliding = false;
  }
}
