void setup()
{
  size(700,700,P3D);
  background(0);
}

void draw()
{
  pushMatrix();
  background(0);

  translate(100, 100, -100);
  rotateY(float(frameCount)/200);
  fill(0);
  //color(0,0,255);
  stroke(0,255,0);
  sphere(100);
  popMatrix();
  
  float xpos = 50;
  float ypos = 600;
  float xwidth = 25;
  float xheight = -100;
  for(int i=0; i<500; i+=50)
  {
      float scale = random(-50, 50);
    
      rect(xpos + i, ypos, xwidth, xheight - scale);
    
  }
  
  
  
}