Star[] stars = new Star[100];


void setup()
{
  size(800,700,P3D);
  radar1 = new Radar(150, 510, 60, 0.5, color(66, 244, 223));

  sphere1 = new Sphere(650,150, 100, color(66, 244, 223), speed);


  for(int i = 0; i < stars.length; i++)
  {
     stars[i] = new Star(); 
  }
 
}
Radar radar1;

Sphere sphere1;

float radius = 75;
float speed = 200;

void draw()
{
  background(0);
  
  for(int i = 0; i < stars.length; i++)
  {
     stars[i].update();
     stars[i].render();
  }
 
  
  strokeWeight(10);
  rect(10,10, 780, 680);
  strokeWeight(1);

  
  barchart(); //<>//
    
  //radar
  radar1.render();
  radar1.update();
  radar1.keyPressed(); 

  
  sphere1.display();  
  sphere1.keyPressed(); 
  Window();
  data();
  button();
  barchart();
  analyzer();
  
  stroke(255,0,0);
  ellipse(mouseX, mouseY, 10,10);
  ellipse(mouseX,mouseY, 15,15);
  stroke(66, 244, 223);
  
  //shoot();
  //stars();
}

void Window()
{
  noFill();
  strokeWeight(7);
   rect(300,50, 450, 300);
   strokeWeight(1);
}

void data()
{
  rect(50, 300, 200, 100); 
  textSize(16);
  fill(66, 244, 223);
  text("Control Box", 50, 290);
 
}

void button()
{
  noFill();
  textSize(16);
  text("A", 78, 332);
  rect(70, 310, 25, 35);
  textSize(16);
  text("B", 78, 372);
  rect(70, 350, 25, 35);
  fill(100, 11, 196);
  ellipse(170, 325, 100,25);
  ellipse(170, 370, 100,25);
  noFill();
}

void barchart()
{
  //barchart
  textSize(16);
  fill(66, 244, 223);
  text("Activity Diagnostics", 300, 435);
  
  noFill();
  float xpos = 310;
  float ypos = 600;
  float xwidth = 25;
  float xheight = -100;
  stroke(66, 244, 223);
  for(int i=0; i<410; i+=50)
  {
      float scale = random(-50, 50);
      
      rect(xpos + i, ypos, xwidth, xheight - scale);
    
  }
  
  rect(300, 610, 445, -170);
  
  //finished barchart
}

void keyPressed()
{
  if(key == 'w')
  {
     strokeWeight(10);
     line(550,300, mouseX, mouseY); 
     strokeWeight(1);
    
  }
 


}

void analyzer()
{
  text("Analyzer", 50, 90);
  fill(0);
  rect(50,100, 200,100);
  
  /*beginShape();
  vertex(50,150);
  vertex(65,150);
  vertex(80,125);
  vertex(95,175);
  vertex(100,150);
  vertex(115,150);
  vertex(120, 140);
  vertex(136, 166);
  vertex(140,117);
  vertex(146, 187);
  vertex(150,150);
  vertex(160,150);
  vertex(167,125);
  vertex(173,175);
  vertex(182,150);
  vertex(185,150);
  vertex(192, 140);
  vertex(197, 166);
  vertex(200,117);
  vertex(206,150);
  vertex(211,150);
  vertex(219,125);
  vertex(226,175);
  vertex(234,150);
  vertex(245,150);
  vertex(247, 140);
  vertex(250, 166);
    endShape();*/
    
    beginShape();
    vertex(50, random(100,200));
    vertex(58,random(100,200));
    vertex(66, random(100,200));
    vertex(78, random(100,200));
    vertex(83, random(100,200));
    vertex(89, random(100,200));
    vertex(97, random(100,200));
    vertex(110, random(100,200));
    vertex(118, random(100,200));
    vertex(125, random(100,200));
    vertex(134, random(100,200));
    vertex(144, random(100,200));
    vertex(156, random(100,200));
    vertex(158, random(100,200));
    vertex(168, random(100,200));
    vertex(180, random(100,200));
    vertex(186, random(100,200));
    vertex(194, random(100,200));
    vertex(200, random(100,200));
    vertex(208, random(100,200));
    vertex(214, random(100,200));
    vertex(219, random(100,200));
    vertex(234, random(100,200));
    vertex(245, random(100,200));
    vertex(250, random(100,200));
  endShape();  
  
  
}

 