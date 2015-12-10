/*
 * @name Video Cues
 * @description <p>Load a video and create a DOM element for it to play inside</p>
 * <p><em><span class="small"> To run this example locally, you will need the
 * <a href="http://p5js.org/reference/#/libraries/p5.dom">p5.dom library</a>
 * at least one video file, and a running <a href="https://github.com/processing/p5.js/wiki/Local-server">local server</a>.</span></em></p>
 */
var space;
var bgColor;
var x = 0;
var y = 0;
var z = 0;
var x1 = 0;
var angle = 0.0;
var radius = 250.0;
var frameRate = 30;
var x1 = cos(angle)*radius;

function setup() {
  bgColor = color(255,255,255);

  createCanvas(windowWidth,windowHeight);
  // specify multiple formats for different browsers
  space = createCapture(VIDEO);
  space.loop(); // set the video to loop and start playing
  space.volume(0);//we set the volume to 0 because we don't want
                  //sound
  space.showControls();

  //a centered video element
  //space.position(windowWidth/2 - (space.width/2),windowHeight/2 - (space.height/2));

  textSize(32);
}
function draw(){
  background(bgColor);
  //text("current video time: " + space.time(), 20,32);
  //text("video duration: " + space.duration(), 20,64);

//time, function, and what we want to put in the function (the argument)
  //space.addCue(3.0, translateSpace, image.translate(200, 20));
  //space.addCue(4.0, translateSpace, color(0,124,23));
  //space.addCue(6.5, translateSpace, color(23,0,125));

}

function draw() {
  
 
  //bgColor = col;
  image(space, x, y, width, 300);
  space.rotate(x,y,z);
  x=x+noise(frameCount)*.1;
  y=y+noise(frameCount)*.1;
  //space.rotate(x,y,z);
} 



