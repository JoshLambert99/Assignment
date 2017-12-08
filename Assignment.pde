void setup()
{
  size(700,700,P3D);
  background(0);
}

void draw()
{
  pushMatrix();
    background(0);

  translate(200, 200, 100);
  rotateY(float(frameCount)/200);
  noFill();
  stroke(255);
  sphere(100);
  popMatrix();
  
  
}