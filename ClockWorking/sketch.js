var radius = 250.0;
var angle = 0.0;
var x = 0;
var y = 0;

function setup() {
  //frameRate(2);
  //radius = min(width, height);
  //secondsRadius = radius * 0.72;
  //createCanvas(900,900);
  
}

function draw() {
  createCanvas(900,900);
  
  ellipse(height/2,width/2,600,600);
  ellipse(height/2,width/2,20,20);
  
  translate(height/2,width/2,height/2, width/2);
  angle = (second()/59.0) * TWO_PI;
  minAngle = (minute()/59.0) * TWO_PI;
  
  //rotate(radius,angle);
  
  x = cos(angle)*radius;
  y = sin(angle)*radius;
  x1 = cos(minAngle)*radius;
  y1 = sin(minAngle)*radius;
  

  line(0,0,x,y);
  line(0,0,x1 +2 ,y1 + 2);
}