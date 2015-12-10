void setup(){
  size(640,700);
}
void draw(){
  //int x = 0;
  //int y = 0;
  
  
  //top rect background
  background(#582F35);
  
  //black rect background
  fill(0);
  rect(0,130,700,640);
  
  
  //stroke(255);
  
  //LEFT SIDE
  
  beginShape(QUAD_STRIP);
  //while(x < width && y < height) {
    fill(#d8413b);
    vertex(10,250);
    vertex(10,610);
    vertex(175,250);
    vertex(140,610);
      //x+=10;
      //y+=10;
  //}
  endShape(CLOSE);
  
//blue
  beginShape(QUAD_STRIP);
    fill(0,0,255);
    vertex(10,605);
    vertex(10,610);
    vertex(140,605);
    vertex(140,610);
    endShape(CLOSE);
    
    beginShape(QUAD_STRIP);
    fill(#791204);
    vertex(10,615);
    vertex(10,700);
    vertex(140,615);
    vertex(130,700);
    endShape(CLOSE);
    
    beginShape(QUAD_STRIP);
    fill(#e0aa52);
    vertex(225,615);
    vertex(225,700);
    vertex(160,615);
    vertex(160,700);
    endShape(CLOSE);
    
    beginShape(QUAD_STRIP);
    fill(#e0aa52);
    vertex(415,615);
    vertex(415,700);
    vertex(480,615);
    vertex(480,700);
    endShape(CLOSE);
  
  //MIDDLE
  
  
  beginShape(QUAD_STRIP);
  fill(#794224);
  vertex(230,220);
  vertex(230,700);
  vertex(410,220);
  vertex(410,700);
  endShape(CLOSE);
  
  //RIGHT SIDE
  
 //red
  beginShape(QUAD_STRIP);
  fill(#d8413b);
  vertex(630,250);
  vertex(630,610);
  vertex(465,250);
  vertex(500,610);
  endShape(CLOSE);
 
 //brown
   beginShape(QUAD_STRIP);
    fill(#791204);
    vertex(630,615);
    vertex(630,700);
    vertex(500,615);
    vertex(510,700);
    endShape(CLOSE);
    
//Blue
  beginShape(QUAD_STRIP);
    fill(0,0,255);
    vertex(630,605);
    vertex(630,610);
    vertex(500,605);
    vertex(500,610);
    endShape(CLOSE);
  
}
