class Interaction{
  boolean showDesk;
  boolean showEnd;

  Interaction(){
    showDesk = false;
    showEnd = false;
  
  }
  
  void assign(Bed bed, Desk desk, Rug rug, Guy guy, DeskScene deskScene){
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
    
    
    //cabin interraction
  
    //grave interaction
  }
}  
