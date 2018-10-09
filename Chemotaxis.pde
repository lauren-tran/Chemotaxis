 Bacteria[] bob;  
 void setup()   
 {     
   size(300,300);
   bob = new Bacteria[50];
   for(int i = 0; i < bob.length; i++)
   {
     bob[i] = new Bacteria();
   }
 }   
 void draw()   
 {
   background(255);
   for(int i = 0; i < bob.length; i++)
   {
     bob[i].show();
     bob[i].move();
   }
 }
 class Bacteria
 {
   int myX, myY, colorA, colorB, colorC;
   
   Bacteria() //constructor
   {
     myX = myY = 150; 
     colorA = (int)(Math.random()*256);
     colorB = (int)(Math.random()*256);
     colorC = (int)(Math.random()*256);
   }
   void move()
   {
     myX = myX + (int)(Math.random()*5)+((int)(Math.random()*5)-4);
     myY = myY + (int)(Math.random()*5)+((int)(Math.random()*5)-4);
   }
   void show()
   {
    fill(colorA, colorB, colorC);
    ellipse(myX, myY, 10, 10);
   }
 } 