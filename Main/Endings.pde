class Endings{
PImage ending;

  Endings(int num){
    ending = loadImage("ending" + num + ".png");
  }
  
  void display(){
    image(ending,0,0,800,530);
  }
}
