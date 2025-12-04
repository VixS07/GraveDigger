class Interaction{
  boolean showDesk;
  boolean showEnd;
  PImage place;

  Interaction(){
    showDesk = false;
    showEnd = false;
    place = loadImage("place.png");
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
    if(outside.anyColliding){
      if(hasGhost){
        drawPlace = true;
        guy.canMove = false;
      }
    
    }
  }
}  
