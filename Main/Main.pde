Cabin cabin;
Guy guy;
Desk desk;
Bed bed;
Rug rug;
int ghostsHelped = 0;
Ending1 ending1;
Interaction interaction;
boolean gameOver;


void setup(){
  size(800,530);
  cabin = new Cabin(0,0);
  guy = new Guy(500,400);
  desk = new Desk(270,260);
  bed = new Bed(470,120);
  rug = new Rug(500,430);
  ending1 = new Ending1();
  interaction = new Interaction();
  gameOver = false;
}

void draw(){
  //display endings
  if (gameOver && ghostsHelped == 0){
    ending1.display();
  } else{
  //cabin
  cabin.display();
  //will diplay undernaeth if above furniture
  if(guy.position.y <=250){
  guy.display();
  }
  
  //desk
  desk.display();
  //bed
  bed.display();
  
  rug.display();
  
  //will diplay underneath if belowas furniture
  if(guy.position.y >250){
  guy.display();
  }
  guy.movement(desk,bed);
  
  //essentially all objects passed into the interaction checksssdsa
  interaction.assign(bed, desk, rug, guy, ending1);
  }
}

void keyPressed(){
  if (key == ESC){
  //solution to prevent prrocessing frrom closing found on here:
  //https://forum.processing.org/one/topic/ignore-escape-key-do-other-action.html
  key = 0;
   guy.canMove = true;
   gameOver = false;
  }
  
  //checking to see if the key is pressed
  //this is being done because if keys are sswitched without releasing the previous one first,
  //the direction didnt change
  if (key == 'w' || key == 'W'){
    guy.upPressed = true;
  }
  if (key == 's' || key == 'S'){
    guy.downPressed = true;
  }
  if (key == 'a' || key == 'A'){ 
    guy.leftPressed = true;
  }
  if (key == 'd' || key == 'D'){
    guy.rightPressed = true;
  }
}

 

  void keyReleased() {
    //checking to see if the key is released
  if (key == 'w' || key == 'W'){ 
    guy.upPressed = false;
  }
  if (key == 's' || key == 'S'){ 
    guy.downPressed = false;
  }
  if (key == 'a' || key == 'A'){ 
    guy.leftPressed = false;
  }
  if (key == 'd' || key == 'D'){
    guy.rightPressed = false;
  }
}
