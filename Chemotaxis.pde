 Bacteria [] bacteria = new Bacteria [20];
 void setup() { 
   size(400, 400);
   for (int i = 0; i < bacteria.length; i++){
     bacteria[i] = new Bacteria();
   }
 }   
 void draw() {    
   background(0);
   for(int i = 0; i < bacteria.length; i++) {
     bacteria[i].show();
     bacteria[i].crawl();
   }
 }  
 class Bacteria {     
   int myX;
   int myY;
   color myC;
   
   Bacteria() {
     myX = 0;
     myY = (int)(Math.random()*100)+150;
     myC = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
   }
   
   void crawl() {
     if(myX == 400) {
        myX -= (int)(Math.random()*6);
     }
     myX += (int)(Math.random()*6);
     myY += (int)((Math.random()*6)-2);
   }
   
   void show() {
     fill(myC);
     ellipse(myX, myY, 10, 10);
   }
 }  
