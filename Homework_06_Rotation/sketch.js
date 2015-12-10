var y = 30;
var x = 30;


function setup() {
  createCanvas(900,900);
  stroke(255,0,60);
  frameRate(70);
  background('#49294f');
}

function draw(){
  
  //noStroke();
  
  //rotate(frameCount/4);
  push()
  
  translate(height/2,height/2,width/2,TWO_PI);
  //rotate(frameCount/4);
  //translate(height/2,height/2,width/2,width/2);
  //background('#49294f');
  rotate(frameCount/TWO_PI);
 
  line(0, y, width, x);  
  
  pop();

  
 
}

