function setup() {
  createCanvas(640,700);
}

function draw() {
  
  
   //top rect background
    background('#563433');

    fill(0);
    rect(0,130,700,640);
//left
    fill('#d8413b');
    quad(10,250,10,610,140,610,175,250);
    fill('#4f6df8');
    quad(10,605,10,610,140,610,140,605);
    fill('#791204');
    quad(10,615,10,700,130,700,140,615);
    
//left of center
    fill('#e0aa52');
    quad(225,615,225,700,160,700,160,615);
    
//center
    fill('#794224');
    quad(230,220,230,700,410,700,410,220);

//right of center
    fill('#e0aa52');
    quad(415,615,415,700,480,700,480,615);

//right
    fill('#d8413b');
    quad(630,250,630,610,500,610,465,250);
 
    fill('#791204');
    quad(630,615,630,700,510,700,500,615);

    fill('#4f6df8');
    quad(630,605,630,610,500,610,500,605);

}