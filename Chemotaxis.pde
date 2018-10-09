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
   background(0);
   for(int i = 0; i < bob.length; i++)
   {
     bob[i].show();
     bob[i].move();
   }
 }
 class Bacteria
 {
   int myX, myY;
   
   Bacteria() //constructor
   {
     myX = myY = 150; 
   }
   void move()
   {
     myX = myX + (int)(Math.random()*5)+((int)(Math.random()*5)-4);
     myY = myY + (int)(Math.random()*5)+((int)(Math.random()*5)-4);
   }
   void show()
   {
     ellipse(myX, myY, 10, 10);
   }
 } 