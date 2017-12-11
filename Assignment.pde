void setup()
{
  size(800,700,P3D);
  background(0);
  radar1 = new Radar(150, 510, 60, 0.5, color(0, 255, 0));

}
Radar radar1;

float radius = 75;

void draw()
{
  // rotating sphere
  pushMatrix();
  background(0);

  translate(100, 100, -100);
  rotateY(float(frameCount)/200);
  fill(0);
  //color(0,0,255);
  stroke(0,255,0);
  sphere(100);
  popMatrix();
  //finished rotating sphere
  
  //barchart
  textSize(16);
  fill(0,255,0);
  text("Activity Diagnostics", 300, 435);
  
  noFill();
  float xpos = 310;
  float ypos = 600;
  float xwidth = 25;
  float xheight = -100;
  for(int i=0; i<410; i+=50)
  {
      float scale = random(-50, 50);
    
      rect(xpos + i, ypos, xwidth, xheight - scale);
    
  }
  
  rect(300, 610, 445, -170);
  
  //finished barchart
  
  //radar
  radar1.render();
  radar1.update();


  ellipse(600, 150,  radius*2, radius*2);
  fill(255);

  ellipse(600, 150,  radius, radius);
  

  
  
  
  
}