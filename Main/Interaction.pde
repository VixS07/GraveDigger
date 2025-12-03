class Interaction{
  boolean showDesk;
  boolean showEnd;

  Interaction(){
    showDesk = false;
    showEnd = false;
  
  }
  
  void assign(Bed bed, Desk desk, Bell bell, Rug rug, Guy guy, DeskScene deskScene){
    //end day interaction
      //ending 1
    if(bed.isColliding && keyCode == ENTER){
    gameScreenFreeze = true;
    guy.canMove = false;
    showEnd = true;
    }
      //ending 2
      
      //ending3
      
    //desk interaction
    if(desk.isColliding && keyCode == ENTER){
    gameScreenFreeze = true;
    guy.canMove = false;
    showDesk = true;
    }
    
    //rug interaction
    if(rug.isColliding && keyCode == ENTER){
    isOutside = true;
    guy.position.x = width/2;
    guy.position.y=height/2;
    }
    
    //cabin interraction
  
    //grave interaction
  }
}  
