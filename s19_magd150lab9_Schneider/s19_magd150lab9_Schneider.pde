import processing.video.*;
import processing.sound.*;

PImage img; 
Movie mov;
SoundFile s;
float volume = .75;
void setup() {
  size(400, 400);
 
  img = loadImage("waterfall.jpg");
  
  //using the movie object to import the mp4
  mov = new Movie(this, "Waterfall-10236.mp4");
  mov.loop();
  //Using the soundfile object to import a sound and loop it
  s = new SoundFile(this, "Waterfall-SoundBible.com-1597727655.wav");
  s.loop();
}
void movieEvent(){
  //ensure the movie is playing frame by frame
  mov.read();  
}
void draw(){
  background(0);
  
  image(img, 50, 100, 100, 50);
  img.resize(100, 100);
  image(img, 0, 0);
  image(mov, mouseX, mouseY);
  s.amp(volume);
}
void mouseClicked(){
 
  if (mouseButton == LEFT){
      volume += 0.5;
      mov.tint(255, 0, 255);
  }else if (mouseButton== RIGHT){
      volume -= 0.5;
      mov.tint(0, 255, 0);
  }
}
