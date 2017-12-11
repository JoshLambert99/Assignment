//Planets[] planet = new Planets[9];


void setup()
{
  size(800,700,P3D);
  radar1 = new Radar(150, 510, 60, 0.5, color(0, 255, 0));

  sphere1 = new Sphere(100,100, 100, color(0, 255, 0));

 /* for(int i = 0; i < planet.length; i++)
  {
     planet[i] = new Planets();  
  }
  */
}
Radar radar1;

Sphere sphere1;

float radius = 75;

void draw()
{
 background(0);
   //<>//
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
  
  sphere1.display();
  
  Window();
  data();
  button();
  

 /* for(int i = 0; i < planet.length; i++)
  {
     planet[i].update(); 
     planet[i].render();
  }
  */
  
 
}

void Window()
{
   rect(300,50, 450, 300);
}

void data()
{
  rect(50, 300, 200, 100); 
  textSize(16);
  fill(0,255,0);
  text("Control Box", 50, 290);
 
}

void button()
{
  noFill();
  rect(70, 310, 25, 35);
  rect(70, 350, 25, 35);
  ellipse(170, 325, 100,25);
  ellipse(170, 370, 100,25);

  
    
}