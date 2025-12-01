Cabin cabin;
Guy guy;

void setup(){
  size(800,530);
  cabin = new Cabin(0,0);
  guy = new Guy(200,200);
}

void draw(){
  cabin.display();
  guy.display();

}
