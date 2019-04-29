move m; //calling the move class.
void setup(){
  m = new move();//I am initializing the move object.
  size(400, 400);
}
void draw(){
  background(0);
  m.display();
  m.mover();
  m.mousePressed();
  //I am calling the methods inside of the move class.
}

  
