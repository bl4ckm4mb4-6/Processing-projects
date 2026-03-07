int dx=1, dy=1, x=250, y=100, punti=0;
PFont f;
void setup(){
  background(0);
  size(500,500);
  f = createFont("Arial",20,true);
  textFont(f);
  text("Punti: "+punti,10,30);
}

void draw(){
 background(0);
 text("Punti: "+punti,10,30);
 fill(0,255,0);
 if(mouseX >= (width-50))
   rect(width-50,400,50,10);
 else
   rect(mouseX,400,50,10);
 
 if(x<15 || x>width-15){
   dx = -dx;
 }
 if(y<15){
   dy = -dy;
 }
 if(y>=400){
   if((x>mouseX-15) && (x<mouseX+50+15)){
     dy = -dy;
     punti++;
     if(dy<0)
       dy-=1;
     else
       dy+=1;
     if(dx<0)
       dx-=1;
     else
       dx+=1;
   }
   else{
     for(int i=y;i<height-15;i++){
       x = x+dx;
       y = y+dy;
       fill(255,0,0);
       ellipse(x,y,15,15);
       text("Punti: "+punti,10,30);
       if(mouseX >= (width-50))
         rect(width-50,400,50,10);
       else
         rect(mouseX,400,50,10);
       background(0);
     }
     textSize(50);
     fill(255);
     text("GAME OVER",100,220);
     noLoop();
   }
 }
 x = x+dx;
 y = y+dy;
 fill(255,0,0);
 ellipse(x,y,15,15);
}
