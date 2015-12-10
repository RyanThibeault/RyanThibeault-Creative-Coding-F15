ParticleSystem burp;



void setup(){
 size(500,500);
 smooth(8);
 burp = new ParticleSystem(new PVector(width/2,50));
}

void draw() {
  background(100);
  burp.addParticle();
  burp.run();
}

//define the particlesystem class
class ParticleSystem {
  ArrayList<Particle> particles;
  PVector origin;

  ParticleSystem(PVector location) {
    origin = location.get();
    particles = new ArrayList<Particle>();
  }

  void addParticle() {
    particles.add(new Particle(origin));
  }

  void run() {
    for (int i = particles.size()-30; i >= 0; i--) {
      Particle p = particles.get(i);
      p.run();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }
}

//define the Particle class
class Particle {
  PVector current = new PVector(1,1,1);
  PVector previous = current.get();
  PVector location;
  PVector velocity;
  PVector acceleration;

  float lifespan;

  Particle(PVector l) {
    acceleration = new PVector(0,0.05);
    velocity = new PVector(random(-10,10),random(-2,0));
    location = current.get();
    lifespan = 200.0;
    PVector current = new PVector(0,height/2,100);
  }

  void run() {
    update();
    display();
    isoLine(current,previous);
   
  }

  void update() {
    velocity.add(acceleration);
    //location.add(velocity);
    current.add(velocity);
    lifespan -= .5;
  }

  void display() {
    stroke(2,lifespan);
    fill(200,lifespan);
    //ellipse(location.x,location.y,8,8);
  }
  
  // Is the particle still useful?
  boolean isDead() {
    if (lifespan < 0.2) {
      return true;
    } else {
      return false;
    }
    
  }
  
}
void isoLine(PVector location, PVector velocity) {
 
  PVector newLocation = new PVector(int(height / location.z), int((location.x * location.z)/2 - height));
  PVector newVelocity = new PVector(int(velocity.x / velocity.z), int((velocity.x * velocity.z)/2 / velocity.y));
   
   //changes the color
  stroke(location.x -100,location.y +30,velocity.x);
   
  line (newLocation.x, newLocation.y, newVelocity.x/2, newVelocity.y);
}