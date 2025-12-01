Cabin cabin;
Guy guy;
Desk desk;
Bed bed;

void setup(){
  size(800,530);
  cabin = new Cabin(0,0);
  guy = new Guy(500,400);
  desk = new Desk(270,260);
  bed = new Bed(470,120);
}

void draw(){
  //cabin
  cabin.display();
  //desk
  desk.display();
  //bed
  bed.display();
  
  guy.display();
  guy.movement(desk,bed);

}

void keyPressed(){
  if (key == ESC){
  //solution to prevent prrocessing frrom closing found on here:
  //https://forum.processing.org/one/topic/ignore-escape-key-do-other-action.html
  key = 0;
   guy.showEnding1 = false;
   guy.canMove = true;
  }
}
