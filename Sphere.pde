class Sphere {
  
  int xpos = 0;
  int ypos = 0;
  int size = 0;  
  color c;
  Sphere(int xpos, int ypos, int size, color c)
    {
      this.xpos = xpos;
      this.ypos = ypos;
      this.size = size;
      this.c = c;
          
       
    }
    
    void display()
    {
      pushMatrix();
      translate(xpos, ypos, -100);
      rotateY(float(frameCount)/200);
      fill(0);
      stroke(c);
      sphere(size);
      popMatrix();

    }

  
}