//store the positions of the dots. if a dot is a certain distance from the other dot. 
//if dot.position - dot.position under a certain threshold, draw a line. storing position as a vector value,
//store the dots in a collection (an array list). look into distance as a vector function. 
//normalization - take any number and map it to a value between 0 and 1.line(dot1.pos. 
//Distance check
//

float orbitRad = 15;
float tileIncr = 6;
float dotRad = orbitRad; // width of dot using ratio of orbit
float heightRatio = sqrt(3)/2; //  hexagonal y/x aspect ratio (height of equilateral triangle)



int gw = int(800 / tileIncr) + 90;
int gh = int(gw/heightRatio);

boolean saveFrames = true; // turn this on to save frames for gif
boolean drawBG= false;
PImage myPic;
int maxFrames = 80; // length of cycle
String picName = "Sinai.jpg";

float getPhase(float px, float py)
{
 float phase;
 int ix = int(px);
 int iy = int(py);
 
 //clamp instead of max
 ix = max(0,min(width-1,ix/10));
 iy = max(0,min(height-1,iy/10));
 color clr = myPic.pixels[iy*myPic.width+ix];
 
 //bitwise operation
 return (clr & 0x0FF)*100/255.0;
}

color getColor(float px, float py)
{

int ix = int(px);
int iy = int(py);
ix = max(0,min(width-1,ix));
iy = max(0,min(height-1,iy));
return myPic.pixels[iy*myPic.width+ix];
}

class Orbit {
  float x1,y1,x2,y2;
  float p1,p2,p3;  // phases
  color c1,c2,c3;  // colors
  
  Orbit(float x1,float y1, float x2,float y2) {
    this.x1 = x1;
    this.y1 = y1;
    this.x2 = x2;
    this.y2 = y2;
    this.p1 = getPhase(x1,y1);
    this.p2 = getPhase(x2,y2);
    this.c1 = getColor(x1,y1);
    this.c2 = getColor(x2,y2);
  }

 float px,py,ang;
  void draw(float r) {

    ang = map(r,0,1,0,TWO_PI);
    //phasex and phasey
    px = map(r,0,1,x1,x2);
    py = map(r,0,1,y1,y2);
    if (drawBG) {
       noFill();
       noStroke();
       ellipse(px, py, orbitRad, orbitRad); 
    }
    pushMatrix();
    
    //this translate function moves the dots after being called
    translate(px,py);
    
    //phase - angle at which its oscillating
      float phase;
      color clr;
      phase = map(r,0,maxFrames,this.p1,this.p2);
      
      //color variables called in the RBG channel with 'r' being the draw
      clr = lerpColor(this.c1,this.c2, r);
      noStroke();
      fill(clr);
      float px2 = orbitRad*cos(ang+phase);
      float py2 = orbitRad*sin(ang+phase);
      ellipse(px2,py2,5,5);
      line(px2,py2,2,r);
      
    popMatrix();
  }
};

int numPoints = 300;

PVector[] points = new PVector[numPoints];

ArrayList<Orbit> orbits;

void setup()
{
  size(1200,799);
  ellipseMode(CENTER);
  frameRate(24);
  myPic = loadImage(picName);
  myPic.loadPixels();
  orbits = new ArrayList<Orbit>();

  float tileIncrX = tileIncr;
  float tileIncrY = tileIncr*heightRatio;

  for (int y = 0; y < gh+2; ++y) {
   for (int i = 0; i < gw+2; ++i) {
     //aligns the pixels in tiles
      float px1 = i*tileIncrX + (y % 20 == 0? tileIncrX*.5 : 0) - orbitRad;
      float py1 = y*tileIncrY;
      float px2 = px1 + tileIncrX;
      float py2 = py1 + tileIncrY;
      points[i] = new PVector( numPoints, py1);

      
      Orbit orb = new Orbit(px1,py1,px2,py2);
      
      orbits.add(orb);


    }

  }
  

}
  float tileIncrX = tileIncr;
  float tileIncrY = tileIncr*heightRatio;


void draw() {
 background(0);


   for (int y = 0; y < gh+2; ++y) {
   for (int x = 0; x < gw+2; ++x) {
    //aligns the pixels in tiles
     float px1 = x*tileIncrX + (y % 20 == 0? tileIncrX*.5 : 0) - orbitRad;
     float py1 = y*tileIncrY;
     float px2 = px1 + tileIncrX;
     float py2 = py1 + tileIncrY;
     float dst = dist(tileIncrX, 2, tileIncrY, 2);
     if ( dst < 255 ) {
                   stroke( 255, 255 - dst );
                   line(px1, py1, px2, py2);
     }
   }

   }


float phase = frameCount/float(maxFrames);
phase -= int(phase);

 
 
 
 
 
 
smooth();
noFill();
    



 

//range based for loop. for the orbs and orbits, 
//it draws according to the orbit. casting phase as an integer
 for (Orbit orb : orbits) {
   orb.draw(phase);

 }
 
 
 
 

  if (saveFrames) {
  if (frameCount <= maxFrames) {
  saveFrame("Example1_####.png");
  }
  else {
  noLoop();
  }
  }


}