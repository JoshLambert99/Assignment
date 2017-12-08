void setup()
{
  size(700,700,P3D);
  background(0);
}

void draw()
{
  pushMatrix();
    background(0);

  rotateY(PI * frameCount / 300);
  translate(500, height*0.35, -200);
  noFill();
  stroke(255);
  sphere(150);
  popMatrix();
  
  
}