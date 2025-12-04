class Interaction{
  boolean showDesk;
  boolean showEnd;
  PImage place;
  PImage choice;
  boolean checkYes;
  boolean checkNo;
  int gravesTaken;

  Interaction(){
    showDesk = false;
    showEnd = false;
    place = loadImage("place.png");
    choice = loadImage("choice.png");
    checkYes = false;
    checkNo = false;
    gravesTaken = 0;
  }
  
  void assign(){
    //end day interaction
      //ending 1
    if(bed.isColliding){
    gameScreenFreeze = true;
    guy.canMove = false;
    showEnd = true;
    }
      //ending 2
      
      //ending3
      
    //desk interaction
    if(desk.isColliding){
    gameScreenFreeze = true;
    guy.canMove = false;
    showDesk = true;
    }
    
    //rug interaction
    if(rug.isColliding){
    isOutside = true;
    guy.position.x = 280;
    guy.position.y=259;
    rug.isColliding = false;
    }
    
    //cabin interraction
    if(house.isColliding){
    isOutside = false;
    guy.position.x = 600;
    guy.position.y=400;
    println(isOutside);
    house.isColliding = false;
    }
  
  
    //grave interaction
    //loop
    if(outside.anyColliding){
      //loop through the grave ids to find out which grave youre on
      for(int i = 0; i < graves.length; i++){
        Grave num = graves[i];
        if(num.isColliding){
          if(hasGhost &&!num.taken){
          drawPlace = true;
          if(checkYes){
            num.taken = true;
            hasGhost = false;
            checkYes = false;
            drawPlace = false;
            gravesTaken +=1;
            bell.canClick = true;
            println(num.id);
            if(deskScene.ghost[deskScene.order].id == num.id){
            ghostsHelped+=1;
            println(ghostsHelped);
            }
          } else if(checkNo){
            drawPlace = false;
          }
          } else if (num.taken){
            println("someone already lays here, try somewhere else");
            drawPlace = false;
          }
          }
        }
      }
      }
    
    
}  
