class Sphere {
  
  int xpos = 0;
  int ypos = 0;
  int size = 0;  
  color c;
  float speed = 200;
  
  Sphere(int xpos, int ypos, int size, color c, float speed)
    {
      this.xpos = xpos;
      this.ypos = ypos;
      this.size = size;
      this.c = c;
      this.speed = speed;
          
       
    }
    
     void keyPressed()
     {
        if(key == 'a')
        {
             speed = 20;
             

        } 
        else if (key == 'b')
        {
           speed = 500; 
        }
         else if(key == 's')
         {
          speed = 200; 
           
         }
     }

   
    
    void display()
    {
      pushMatrix();
      translate(xpos, ypos, -100);
      rotateY(float(frameCount)/speed);
      fill(0,0,255);
      stroke(c);
      sphere(size);
      noFill();
      popMatrix();
      stroke(66, 244, 223);

    }

  
}