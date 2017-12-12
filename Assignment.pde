Star[] stars = new Star[100];


void setup()
{
  size(800,700,P3D); //P3D so that i can use sphere
  radar1 = new Radar(150, 510, 60, 0.5, color(66, 244, 223));
  //radar object
  sphere1 = new Sphere(650,150, 100, color(66, 244, 223), speed);
  //sphere

  for(int i = 0; i < stars.length; i++)
  {
     stars[i] = new Star(); 
  }
 
}
//initialising variables and objects
Radar radar1;

Sphere sphere1;

float radius = 75;
float speed = 200;

void draw()
{
  background(0);
  
  //for loop so these functions are called in for each star
  for(int i = 0; i < stars.length; i++)
  {
     stars[i].update();
     stars[i].render();
  }
 
  //rectangle/border around the screen
  strokeWeight(10);
  rect(10,10, 780, 680);
  strokeWeight(1);

  //cals the barchart function
  barchart(); //<>//
    
  //radar
  radar1.render();
  radar1.update();
  radar1.keyPressed(); 

  //calling the functions i used 
  sphere1.display();  
  sphere1.keyPressed(); 
  Window();
  data();
  button();
  barchart();
  analyzer();
  
  //follows the mouse around as a red circle
  stroke(255,0,0);
  ellipse(mouseX, mouseY, 10,10);
  ellipse(mouseX,mouseY, 15,15);
  stroke(66, 244, 223);
  
}

//window with the sphere in it
void Window()
{
  noFill();
  strokeWeight(7);
  rect(300,50, 450, 300);
  strokeWeight(1);
}

//the control box with the two buttons in it
void data()
{
  rect(50, 300, 200, 100); 
  textSize(16);
  fill(66, 244, 223);
  text("Control Box", 50, 290);
 
}

//buttons 
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
      float scale = random(-50, 50); //this changes the height ot be a random value
      
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
    
  } //draws a line from a point to where mouseX and mouseY is
 


}

void analyzer()
{
  text("Analyzer", 50, 90);
  fill(0);
  rect(50,100, 200,100);
  
    //random shape with the y- values jumping up and down to look like a data analyzer/heart beat monitor(just quicker)
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

 