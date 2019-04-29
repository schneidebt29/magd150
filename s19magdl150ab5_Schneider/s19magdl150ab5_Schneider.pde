float x = 100;
float y = 110;
float w = 275;
float h = 110;
float c = 180;
float b = 300;

void setup(){
  size(400,400);
  background(255);
  surface.setResizable(true);
  surface.setTitle("Keyboard Entry");
  pixelDensity(displayDensity());
  stroke(0);
 textAlign(CENTER, CENTER);

}

void draw(){

 stroke(255);
 fill(200, 150, 0);
 triangle(x, y, w, h, c, b);
 
 if(keyPressed){
   textSize(70);
   fill(255, 0, 0);
   text(key, 10, 350);
   
 }
 if (mousePressed){
   
    if (mouseButton == LEFT) {
      fill(255, 0, 0);
      rect(10, 10, 200, 25);
      fill(204, 0, 0);
       ellipse(210, 210, 25, 25);
       
       
       ellipse(200, 150, 25, 25);
     
       
       ellipse(180, 200, 25, 25);
     
      
       ellipse(150, 125, 25, 25);
      
       
       ellipse(180, 240, 25, 25);
    } else if (mouseButton == RIGHT) {
      fill(255);
      rect(10, 35, 200, 25);
    } else if (mouseButton == CENTER) {
      fill(0, 255, 0);
      rect(10, 60, 200, 25);
    }
 }
 }

void mousePressed() {
  println(mouseButton + "pressed.");
  noStroke();
  
}
