class Pendulum
{
  PVector location;
  PVector origin;
  float radius;
  float angle;
  float aVelocity;
  float aAcceleration;
  float damping;
  
  Pendulum(PVector o, float r)
  {
    origin = o.copy();
    location = new PVector();
    radius = r;
    angle = PI / 4;
    
    aVelocity = 0.0;
    aAcceleration = 0.0;
    damping = 0.999;
  }
  
  void go()
  {
    update();
    display();
  }
  
  void update()
  {
    float gravity = 0.7;
    float aAcceleration = (-1 * gravity / radius) * sin(angle);
    aVelocity += aAcceleration;
    angle += aVelocity;
    
    aVelocity *= damping;
  }
  
  void display()
  {
    location.set(radius * sin(angle), radius * cos(angle), 0);
    location.add(origin);
    
    stroke(255, 255, 0);
    line(origin.x, origin.y, location.x, location.y);
    noStroke();
    fill(255);
    ellipse(location.x, location.y, 30, 30);
  }
}