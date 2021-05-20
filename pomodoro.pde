int rectSize = 50;
float rectX = 100;
float rectY = 723;
color one = color(#FF7152);
String time;
int seconds=0;
int minutes=0;
int milliseconds = 0;
int start;
boolean play = false;
int finish = 15;
int increase = 1;
PImage img;
int borble = 0;
int trianglex = 0;
int triangley = 0;
String typing = "";
int line = -1;
String[] textBox = new String[20];
void setup() {

  size(1150,850);
  frameRate(200);
  img = loadImage("tomato.png");
  
}


void draw() {
 background(255, 204, 200);
 
textSize(30);
text(typing, 750,100);
for (int i = 0; i<20;i++) {
  checkBox.draw();
}

 if (frameCount%1==0) {
  // System.out.println(line);
 }
 textSize(70);
 time = "time: "+ minutes + ":"+ seconds +":"+milliseconds;
 text(time, 200, 770);
 image(img, 0, 0);
 fill(one);
 noStroke();
 rect(rectX, rectY, rectSize, rectSize);
 fill(255,255,255);
  translate(375, 375);
  rotate(minutes*(PI/30));
  triangle(-5, 0, 0, -280, 5, 0);
  rotate((float)(seconds)*PI/30.0);
  triangle(-5, 0, 0, -280, 5, 0);
  
  if (minutes==finish) {
    milliseconds = 0;
    seconds = 0;
    minutes = 0;
    play=false;
  }
  
  if (play==true) {
  
   borble = frameCount-start;
  milliseconds = borble%60;
  
  
 if (borble%60==0) {
   seconds++;
 }
 
 if (borble%3600==0) {
   minutes++;
 }
 
 if (seconds==60) {
   seconds-=60;
 }

  } 
  
 
  
  
  
 ;
  if (mouseX>=rectX&& mouseX <=rectX+rectSize && mouseY>=rectY&& mouseY <=rectY+rectSize) {
    one = (#5CBDB3);
    
    if (mousePressed==true) {
      one = (#000000);
      //start = frameCount;
      //play = true;
    }
    
  }
  
  else {
    one = (#FF7152);
  }

//fill(0,0,0);


//String[] textBox = new String[20];
/*for (int i = 0;i<20;i++) {
  textBox[i] = "hh";
}
for (int i = 0;i<20;i++) {
  text(textBox[i], 350,-250+i*30);
}
*/
}

void keyPressed() {
  typing = typing + key;
  if (key=='\n') {
    
    line++;
    textBox[3] = "hewwo";
    //typing = "";
  }
}



void mouseReleased() {

  if (mouseX>=rectX&& mouseX <=rectX+rectSize && mouseY>=rectY&& mouseY <=rectY+rectSize) {
  
    if (play==false) {
    play=true;
    
    if (milliseconds==0 && seconds==0&&minutes ==0) {
      start = frameCount;
    }
    
    }
    else {
    play=false;
    }
    
  }
  trianglex = mouseX;
  triangley = mouseY;
  System.out.println(mouseX+" "+mouseY);
}
