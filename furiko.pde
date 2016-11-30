Pendulum[] ps = new Pendulum[30];

void setup()
{
  size(1980, 1080);
  frameRate(60);
  
  for(int i = 0; i < ps.length; i++)
  {
    ps[i] = new Pendulum(new PVector(width / 2, 10), 100 + i * 30);
  }
}

void draw()
{
  background(0);
  
  for(int i = ps.length - 1; i >= 0; i--)
  {
    ps[i].go();
  }
  
  /*
  println(frameCount);
  saveFrame("screen-#####.png");
  if(frameCount > 3600)
  {
     exit();
  }
  */
}