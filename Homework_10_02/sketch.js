//code by:
// https://github.com/Jared-Sprague
var spriteSheet;
var posYSlider, 
posXSlider;

function setup() {
  createCanvas(1000, 600);
  background(200);
  posYSlider = createSlider(0, height, height/2);
  posYSlider.position(width - 50,20);
  
  posXSlider = createSlider(0, height, 20);
  posXSlider.position(height - 50,50);

  spriteSheet = loadImage('image/ThesisFinal_002_2000.png', function () {
    // Full sprite sheet
    image(spriteSheet, 0, 0);



    
  });
}

function draw(){
  clear()
  image(spriteSheet, 0, 0);
  image(spriteSheet, 620, 110, 60, 80, posYSlider.value(), posXSlider.value(), posYSlider.value(), posXSlider.value());
}
function keyPressed() {
  
  if (keyCode === LEFT_ARROW) {
    image(spriteSheet, 620, 110, 60, spriteSheet.width += 500, 0, 0, 0, 0);
  }
}