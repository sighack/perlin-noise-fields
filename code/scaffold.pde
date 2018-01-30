import processing.pdf.*;
import gifAnimation.*;

float noise_scale = 0.01;
float force_scale = 1;
int RANGE = 100;

ArrayList<ParticleSetGroup> psets;

class ParticleSetGroup {
  ArrayList<ParticleSet> group;
  ParticleSetGroup() { 
    this.group = new ArrayList<ParticleSet>();
  }
  void add(ParticleSet pset) { 
    this.group.add(pset);
  }
};

ParticleSetGroup curr;
void pset_begin_layer() { 
  curr = new ParticleSetGroup();
}
void pset_add(ParticleSet ps) { 
  curr.add(ps);
}
void pset_end_layer() { 
  add_group(curr);
}
void add_group(ParticleSetGroup psg) { 
  psets.add(psg);
}

boolean seamless;
GifMaker gifExport;

void init(boolean is_seamless) {
  smooth();
  //noiseSeed(millis());
  background(255);
  psets = new ArrayList<ParticleSetGroup>();
  seamless = is_seamless;
  gifExport = new GifMaker(this, "out.gif");
  gifExport.setRepeat(0);  // make it an "endless" animation
  gifExport.setSize(500, 500);
}

void save_pdf(String name) {
  beginRecord(PDF, "artwork-" + name + ".pdf");
}

PVector force_from_angle(float theta) {
  return new PVector(cos(theta) * force_scale, sin(theta) * force_scale);
}

PVector force_at(float x, float y) {
  float theta = noise(x * noise_scale, y * noise_scale) * TWO_PI;
  return force_from_angle(theta);
}

//PVector force_at(float x, float y) {
//    float theta;
//    theta = random(0, 1) * TWO_PI;
//    return force_from_angle(theta);
//}

void draw_force(PVector v, float x, float y, float len) {
  fill(0, 50);
  stroke(0, 50);
  line(x - len * v.x/2, 
    y - len * v.y/2, 
    x + len * v.x/2, 
    y + len * v.y/2);
  ellipse(x + len * v.x/2, 
    y + len * v.y/2, 
    3, 3);
}

void draw_force_field() {
  for (int i = 5; i < width; i+=10) {
    for (int j = 5; j < height; j+=10) {
      PVector v = force_at(i, j);
      draw_force(v, i, j, 10);
    }
  }
}

class Particle {
  float prev_x, prev_y; // The last X and Y position
  float x, y; // The X and Y position on the canvas
  boolean dead;
  color pcolor;
  int lifetime;

  Particle(float x, float y, int lifetime, color c) {
    this.x = x;
    this.y = y;
    this.dead = false;
    this.lifetime = lifetime;
    this.pcolor = c;
  }

  void update() {
    PVector force = force_at(this.x, this.y);

    this.lifetime--;
    if (this.lifetime <= 0)
      this.dead = true;

    if (!seamless) {
      if (this.x >= width + width/2 ||
        this.x < -width/2 ||
        this.y >= height + height/2 ||
        this.y < -height/2)
        this.dead = true;
    } else {
      if (this.x >= width) {
        this.x -= width;
        this.prev_x -= width;
      } else if (this.x < 0) {
        this.x += width;
        this.prev_x += width;
      }
      
      if (this.y >= height) {
        this.y -= height;
        this.prev_y -= height;
      } else if (this.y < 0) {
        this.y += height;
        this.prev_y += height;
      }
    }

    this.prev_x = x;
    this.prev_y = y;

    this.x += force.x;
    this.y += force.y;
  }
};

class ParticleSet {
  ArrayList<Particle> particles;
  boolean dead;

  ParticleSet(int n, int lifetime, color c) {
    dead = false;
    particles = new ArrayList<Particle>();
    for (int i = 0; i < n; i++) {
      float px = random(-RANGE, width + RANGE);
      float py = random(-RANGE, height + RANGE);
      particles.add(new Particle(px, py, lifetime, c));
    }
  }

  void update() {
    this.dead = true;
    for (int i = 0; i < this.particles.size(); i++) {
      Particle p = particles.get(i);
      if (p.dead == true)
        continue;
      else
        this.dead = false;
      p.update();
    }
  }

  void draw() {
    for (int i = 0; i < this.particles.size(); i++) {
      Particle p = particles.get(i);
      if (p.dead == true)
        continue;
      this.step(p);
    }
  }

  void step(Particle p) {
  }
};

int frame = 0;
int iteration = 0;
boolean make_gif = false;
void draw_and_update(int skip) {
  frame++;
  if (iteration < psets.size()) {
    boolean dead = true;
    for (int i = 0; i < psets.get(iteration).group.size(); i++) {
      psets.get(iteration).group.get(i).update();
      psets.get(iteration).group.get(i).draw();
      if (psets.get(iteration).group.get(i).dead == false)
        dead = false;
    }

    // Move to next group of particle sets if this one is dead
    if (dead)
      iteration++;
    
    if (make_gif && frame % skip == 0) {
      gifExport.setDelay(1);
      gifExport.addFrame();
    }
  } else {
    endRecord();
    if (make_gif) {
        gifExport.setDelay(7000);
        gifExport.addFrame();
        gifExport.finish();
    }
    println("Finished");
    noLoop();
  }
}
