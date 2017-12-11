class Radar
{
  float cx, cy;
  float radius;
  float theta;
  float speed;
  float frequency;
  color c;
  
  Radar(float cx, float cy, float radius, float frequency, color c)
  {
    this.cx = cx;
    this.cy = cy;
    this.radius = radius;
    this.frequency = frequency;
    this.speed = (TWO_PI / 60.0) * frequency;
    this.theta = 0;
    this.c = c;
  }
  
  void update()
  {
    theta += speed;
   
  }
  
  void render()
  {
    stroke(66, 244, 223);
    noFill();
    ellipse(cx, cy, radius * 2, radius * 2);
        ellipse(cx, cy, radius * 1.5, radius * 1.5);

    ellipse(cx, cy, radius , radius );
    ellipse(cx, cy, radius / 2, radius / 2);


    int trailLength = 10;
    float Intensity = 255 / (float)trailLength;
    for(int i = 0 ; i < trailLength ; i ++)
    {
      stroke(28, 170,i * Intensity);
      float x = cx + sin(theta + i * speed) * radius;
      float y = cy -cos(theta + i * speed) * radius;
      line(cx, cy, x, y);
    }
    
    fill(255,0,0);
    ellipse(175, 500, 5,5);
    ellipse(150, 540, 10,10);
    ellipse(185, 515, 15,15);
    

    textSize(16);
    fill(66, 244, 223);
    text("Scanner", 125, 600);
  }
}