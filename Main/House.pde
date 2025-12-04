class House{
  PImage house;
  PVector pos;
  float houseW;
  float houseH;
  boolean isColliding;

  
  House(float x, float y, float w, float h){
    pos = new PVector (x,y);
    houseW = w;
    houseH = h;
    house = loadImage("house.png");
    isColliding = false;
  }
  
  void display(PVector outsidePos){
    image(house,pos.x+outside.pos.x,pos.y+outside.pos.y,houseW,houseH);
  }
  
  void checkCollision(PVector guyPos, float guyW, float guyH, PVector outsidePos){
    if (guyPos.x < (pos.x+outsidePos.x) + (houseW +18) && //increasse the hitbox forr the right sides to accomadate for blank pixels in the guy image
        guyPos.x + guyW > ((pos .x+outsidePos.x) +68) &&
        guyPos.y < (pos.y+outsidePos.y) + (houseH-51) && //shrink the grave h a bit so the guy can walk slightly into the image. helps with prespective
        guyPos.y + guyH > ((pos.y+outsidePos.y) + 100)){
      isColliding = true;
      rect(0,0,50,50);
    } else {
      isColliding = false;
    }
  }
  }
  
