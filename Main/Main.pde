Cabin cabin;
Guy guy;
Desk desk;
Bed bed;
Rug rug;
int ghostsHelped = 0;
Ending1 ending1;
Interaction interaction;
boolean gameScreenFreeze;
boolean isOutside;
DeskScene deskScene;
Bell bell;
Sign sign;
Sign sign1;
Outside outside;
Grave[] graves;
House house;
boolean hasGhost;
Reset reset;
boolean drawPlace;

void setup(){
  size(800,530);
  
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
  sign1 = new Sign(guy.position.x-150,guy.position.y-260,100,70);
  
  //outside
  isOutside = false;
  outside = new Outside(0,0);
  //graves
  graves = new Grave[5];
  house = new House(40,0,430,250);
  reset = new Reset();
  
  //assign for graves at y = 15
  for(int i = 0; i <=2; i++){
  int j = 680 + (i*300);
  graves[i] = new Grave (j, 15, 110, 210, "grave" + (i+1), i,false);
  }
  //assign for graves at y = 760
  for(int i = 3; i <=4; i++){
  int j = 190 + ((i-3)*620);
  graves[i] = new Grave (j, 760, 110, 190, "grave" + (i+1), i,false);
  }
  
  hasGhost = false;
  drawPlace=false;
}

void draw(){
  //display endings
  if (gameScreenFreeze && ghostsHelped == 0 && interaction.showEnd){
    ending1.display();
  } 
  else if(gameScreenFreeze && interaction.showDesk){
  deskScene.display(bell);
  } else if (!isOutside){
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
  guy.movement(desk,bed,rug);
  
  }
  
  else if(isOutside){
    outside.display();
    outside.checkMap();
    house.display(outside.pos);
    // draw all graves
    for (int i = 0; i < graves.length; i++) {
    graves[i].display(outside.pos);
    }
    guy.display();
    guy.movementOutside(outside,graves);
    if(drawPlace){
      image(interaction.place,guy.position.x+50,guy.position.y-100,100,100);
      image(interaction.choice,guy.position.x+50,guy.position.y,100,100);
    }
  }
  
} 

void keyPressed(){
  if (key == ESC){
  //solution to prevent prrocessing frrom closing found on here:
  //https://forum.processing.org/one/topic/ignore-escape-key-do-other-action.html
  key = 0;
   guy.canMove = true;
   gameScreenFreeze = false;
   interaction.showEnd = false;
   interaction.showDesk = false;
  }
  if(keyCode == ENTER){
  //class that actually handles the interactions between classes
  interaction.assign();
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
  
  if(key == 'k'){
  reset.redo();
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

void mouseClicked(){
  //click on bell
  bell.checkCollision();
  if(bell.canClick && bell.isColliding){
  ghostsHelped+=1;
  bell.canClick = false;
  }
  //click on sign
  sign.checkCollision();
  
  //click on check
  if(drawPlace){
  if(mouseX > guy.position.x+50 && mouseX < guy.position.x +150 &&
     mouseY >guy.position.y && mouseY<guy.position.y+100){
     interaction.checkYes = true;
     println(interaction.checkYes);
     }
  }
}

//void mousePressed(){
//  println(outside.pos.x, outside.pos.y,guy.position.x,guy.position.y);
//  println(outside.tracker.x,outside.tracker.y);
