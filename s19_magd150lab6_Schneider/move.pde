class move {
  float speedx = 1.5;
  float speedy = -.5;
  float x = 0;
  float x1 = 0; 
void setup(){
  size(400, 400);
   
}

move(){
  speedx = 1.5;
  speedy = -.5;
  x = 0;
  x1 = 0; 
}
void mover(){
  x = x + speedx;
  if(x > width){
    x = 0;  
  }
  //declaring the variable x to have speed and to move the triangle
  x1 = -x + speedy;
  if(x1 > width){
     x1 = 0; 
  }
  //making sure the second triangle does not move
}  
 
void display(){
    strokeWeight(0);
    stroke(255);
    
    translate(x, 0);
    triangle(0, 300, 25, 250, 50, 300);
    
    translate(x1, 0);
    triangle(325, 25, 350, 75, 375, 25);
    triangle(10, 25, 35, 75, 60, 25);
}

void mousePressed(){
  if(mousePressed && (mouseButton == LEFT)){
    strokeWeight(4);
    stroke(255, 0, 0);
    line(350, 75, 350, 300);
  }
  else if(mousePressed && (mouseButton == RIGHT)){
    strokeWeight(4);
    stroke(0, 0, 255);
    line(35, 75, 35, 300);
  }
}
}
