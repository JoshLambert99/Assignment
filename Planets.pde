class Planets
{
  float x;
  float y;
  float z;
  
    
  Planets()
  {
    x = random(320,700);
    y = random(70,260);
     
      
  }
  
  
  void update()
  {
    
  }
  
  void render()
  {
    fill(random(0, 255), random(0, 255), random(0, 255));
     noStroke();

     ellipse(x,y,50,50);
  }
  
  
  
  
}