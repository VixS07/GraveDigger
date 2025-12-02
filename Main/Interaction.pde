class Interaction{

  Interaction(){
  
  }
  
  void assign(Bed bed, Desk desk, Rug rug, Guy guy, Ending1 ending1){
    if(bed.isColliding && ghostsHelped == 0 && keyCode == ENTER){
    gameOver = true;
    guy.canMove = false;
    }
  
  
  }
}  
