
void setup()
{
  size(800,700,P3D);
  radar1 = new Radar(150, 510, 60, 0.5, color(66, 244, 223));

  sphere1 = new Sphere(100,100, 100, color(66, 244, 223), speed);


 
}
Radar radar1;

Sphere sphere1;

float radius = 75;
float speed = 200;

void draw()
{
  background(0);
  
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
  
  ellipse(mouseX, mouseY, 10,10);
  ellipse(mouseX,mouseY, 15,15);
  
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

void mousePressed()
{
  strokeWeight(10);
  line(550,300, pmouseX, pmouseY); 
  strokeWeight(1);
  /*fill(0,0,255);
  stroke(0,0,255);
  arc(750,350, 450,450,PI,PI+ HALF_PI);
  noFill();
  
  beginShape();
  stroke(0,255,0);
  fill(70,255,80);
  vertex(670,150);
  vertex(700,175);
  vertex(700,200);
  vertex(680,250);
  vertex(630,300);
  vertex(614,290);
  vertex(608,260);
  vertex(586,240);
  vertex(610,220);
  vertex(630,215);
  vertex(646,190);
  vertex(656,167);
  vertex(670,150);

  endShape();
    noFill();
    */

}

/*void stars()
{
   fill(255);
   stroke(255);
   ellipse(350, 68, 8,8);
   ellipse(370, 168, 8,8); 
   ellipse(390, 98, 8,8); 
   ellipse(431, 268, 8,8); 
   ellipse(420, 338, 8,8); 
   ellipse(400,87, 8,8); 

  noFill();
  
}*/

 