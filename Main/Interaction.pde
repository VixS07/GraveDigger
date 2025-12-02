class Interaction{
  boolean showDesk;

  Interaction(){
    showDesk = false;
  
  }
  
  void assign(Bed bed, Desk desk, Rug rug, Guy guy, DeskScene deskScene){
    //end day interaction
      //ending 1
    if(bed.isColliding && ghostsHelped == 0 && keyCode == ENTER){
    gameScreenFreeze = true;
    guy.canMove = false;
    }
      //ending 2
      
      //ending3
      
    //desk interaction
    if(desk.isColliding && keyCode == ENTER){
    gameScreenFreeze = true;
    showDesk = true;
    }
    
    //rug interaction
    
    
    //cabin interraction
  
    //grave interaction
  }
}  
