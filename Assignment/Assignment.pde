void setup()
{
   size(680,340,P3D);

}

void draw()
{
  background(0);
  lights();
  pushMatrix();
  translate(500, height*0.35, -200);
  noFill();
  stroke(255);
  sphere(280);
  popMatrix();
  
}