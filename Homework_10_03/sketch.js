var verbSlider;
//var panning = map(ball.x, 0., width,-1.0, 1.0);
var ball = {};

function preload() {
  mySound = loadSound('assets/underus.mp3');
}

function setup() {
  createCanvas(400, 400);
  background(255, 255, 255);
  mySound.loop(0);
  verbSlider = createSlider(0, height, height/2);
  reverb = new p5.Reverb();
  mySound.disconnect();
  sampleRate(44100);
  
  
  //var r = verbSlider.value();
  mySound.setVolume(.3);
  //reverb.process(mySound, panning, r);
  mySound.play();
  var r = verbSlider.value();
  reverb.process(mySound, r,r);
  
}

function draw(){
  //var r = verbSlider.value();
  //reverb.process(mySound, r,r);
  
}

