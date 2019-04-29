String[] comments = {
    "Be Ready To Have Your Minds Blown This Saturday!",
    "UWW Production Presents",
    "The Best Movie This Year!",   
};
String[] s;
String[] f;
//creating a variable to hold the txt file.
String sourceFile = "Movie.txt";
PFont a;
PFont r;
float x;
int i = 0;
int textSize, lineSpace, margin;


void setup(){
  surface.setResizable(true);
  surface.setTitle("DEVASTATION 2");
  pixelDensity(displayDensity());
  size(600, 600);
  a = createFont("Times New Roman", 30);
  r = createFont("Ariel", 30);
  x = width;
  //importing a txt file from the Movie.txt file.
  s = loadStrings(sourceFile);
  printArray(s);
  textSize(30);
  //aligning the txt that is not moving to center and top
  textAlign(CENTER, TOP);
  lineSpace = 70;
  margin = 175;
  
}
void draw(){
  background(0);
  textFont(a);
  fill(255);
 
  textAlign(LEFT);
  //printing out the moving text on the bottom of the scren
  text(comments[i], x, height-20);
  
  x = x-3;
  
  float b = textWidth(comments[i]);
  if(x < -b){
    x = width;
    i = (i + 1) % comments.length;
  }
 
  Import();
  
}
void Import(){
  textFont(r);
  //using a for loop to print out the text file in the s array
  for(int b = 0; b < s.length; b++){
    text(s[b], margin, margin + (textSize + lineSpace) * b);
  }
  
}
