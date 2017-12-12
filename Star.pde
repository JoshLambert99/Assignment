class Star {
   float x;
   float y;
   float z;

  Star() {
    x = random(0,width);
    y = random(0,height);
    
 }
 
 
 void update()
 {
     
 }
 
 void render()
 {
   fill(255);
   noStroke();
   
   ellipse(x,y, 5,5);
   noFill();
 }
}