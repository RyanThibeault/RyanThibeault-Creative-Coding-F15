  
function setup(){
  createCanvas(600,600); 
  background(0); 
  frameRate(25); 
  smooth();
  fill(0,4);
}
  
var x = 0;
var y = 0;
var s = 0;
var a = 0;
var noiseScale = .07;


//define a branch function
function branch(x, y, s, a){
  var newx = x+cos(a)*s;
  var newy = y+sin(a)*s;
  line(x,y,newx,newy);
  
  if(s>20){
    var noiseVal = noise((mouseX+s)*noiseScale, mouseY*noiseScale);
    stroke(noiseVal*255);
    line(x, mouseY+noiseVal*10, x, height);
   branch(newx, newy, s*(random(0.55,0.70)), a-radians(random(17,12)));
   branch(newx, newy, s*(random(0.55,0.70)), a+radians(random(17,12)));
  }
}
  
function mousePressed(){
   stroke(random(130,170),random(220,255),random(130,200));
   branch(mouseX, height, height-mouseY, radians(270));
}