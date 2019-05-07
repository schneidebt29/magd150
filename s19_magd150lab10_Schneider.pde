PImage img;
float a, b, c, scale, aRot, bRot, u, v;

void setup(){
    
    size(600, 600, P3D);
    b = width/2;
    a = height/2;
    c = -600;
    mouseClicked();
    surface.setResizable(true);
    pixelDensity(displayDensity());
    colorMode(RGB, 1, 1, 1);
    scale = min(width, height) / 2.0;
    
    u = 1/6;
    v = 1/6;
    
    textureMode(NORMAL);
    
    textureWrap(REPEAT);
    img = loadImage("obj.tif");
    smooth();
}

void draw(){
  background(0);
  pointLight(1.4, 0.6, 0.5, -0.9, 1, 1.2);
  camera(mouseX, height-100, (height/2) / tan(PI/4), mouseX, height-100, 0, 0, 1, 0);
  translate(a, b, c);
  stroke(255);
  fill(255, 0, 0);
  box(100);
  
  
  aRot = map(mouseY, -height / 2.0, height / 2.0, 1, TWO_PI * 2);
  bRot = map(mouseX, -width / 2.0, width / 2.0, 1, TWO_PI * 2);
  
  pushMatrix();

  
  translate(a, b, c);
  rotateY(aRot);
  rotateX(bRot);
  
  scale(scale);

  beginShape();
  
  texture(img);
  vertex(-1, -1, 1, u, v);
  vertex(1, -1, 1, u, v);
  fill(1, 0.5, 1);
  vertex(1, 1, 1, u, v);
  vertex(-1, 1, 1, u, v);  

  beginContour();
  vertex(0.5, -0.5, 1, u, v);
  vertex(0, -1, 1, u, v);
  vertex(0.5, -0.5, 1, u, v);
  vertex(-0.5, -0.5, 1, u, v);
  endContour();
  endShape(CLOSE);

  beginShape();
  texture(img);
  vertex(1, -1, 1, u, v);
  vertex(1, -1, -1, u, v);
  fill(0, 1, 0.5);
  vertex(1, 1, -1, u, v);
  vertex(1, 1, 1, u, v);
  endShape();

  beginShape();
  fill(0, 0, 1);
  vertex(1, -1, -1, u, v);
  vertex(-1, -1, -1, u, v);
  fill(0.5, 0, 1);
  vertex(-1, 1, -1, u, v); 
  vertex(1, 1, -1, u, v);
  endShape(CLOSE);

  beginShape();
  texture(img);
  vertex(-1, -1, -1, u, v);
  vertex(-1, -1, 1, u, v);
  fill(0.75, 0.75, 0.25);
  vertex(-1, 1, 1, u, v);
  vertex(-1, 1, -1, u, v);
  endShape(CLOSE);

  beginShape();
  texture(img);
  vertex(-1, 1, 1, u, v);
  vertex(1, 1, 1, u, v);
  fill(0.25, 0.75, 0.75);
  vertex(1, 1, -1, u, v);
  vertex(-1, 1, -1, u, v);
  endShape(CLOSE);
  
  beginShape();
  texture(img);
  vertex(-1, -1, -1, u, v);
  vertex(1, -1, -1, u, v);
  fill(0.75, 0.25, 0.75);
  vertex(1, -1, 1, u, v);
  vertex(-1, -1, 1, u, v);
  endShape(CLOSE);  
  popMatrix();
  
  
  translate(-150, 250, 50);
  ambientLight(1, 0.25, 1.5, 0.25, 1.3, 1);
  
  sphere(50); //<>//
}

void mouseClicked(){
  save("obj.tif");
  
}
