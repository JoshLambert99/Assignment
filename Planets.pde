class Planets
{
  float x;
  float y;
  float z;
  
    
  Planets()
  {
    x = random(310,700);
    y = random(70,260);
     
      
  }
  
  
  void update()
  {
    
  }
  
  void render()
  {
    fill(random(0, 255), random(0, 255), random(0, 255));
    noStroke();

        ellipse(x+ i,y,50,50);
          
  }
  
  
  
  
}