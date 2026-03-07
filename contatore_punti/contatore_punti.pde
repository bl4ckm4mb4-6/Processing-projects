float button1X, button1Y, button1Width, button1Height;
float button2X, button2Y, button2Width, button2Height;
float button3X, button3Y, button3Width, button3Height;
float button4X, button4Y, button4Width, button4Height;
float resetX, resetY, resetWidth, resetHeight;

String label1Text = "0";
String label2Text = "0";

int punti1=0;
int punti2=0;

void setup() {
  size(400, 400);
  
  button1Width = 80;
  button1Height = 40;
  button2Width = 80;
  button2Height = 40;
  button3Width = 80;
  button3Height = 40;
  button4Width = 80;
  button4Height = 40;
  resetWidth = width - 20;
  resetHeight = 40;
  
  button1X = 10;
  button1Y = height / 2 + 10;
  button2X = button1Width + 30;
  button2Y = height / 2 + 10;
  
  button3X = width/2 + 10;
  button3Y = height / 2 + 10;
  button4X = width/2 + button3Width + 30;
  button4Y = height / 2 + 10;
  
  resetX = 10;
  resetY = height/2 + 70;
}

void draw() {
  background(240);

  fill(0);
  textSize(60);
  textAlign(CENTER, CENTER);
  
  //label
  fill(255, 0, 0);
  rect(0, 0, width/2, height/2);
  fill(0, 100, 255);
  rect(width/2, 0, width/2, height/2);
  
  fill(255, 255, 255);
  text(label1Text, 100, 100);
  text(label2Text, 300, 100);
  
  //button primo giocatore
  fill(255, 0, 0);
  rect(button1X, button1Y, button1Width, button1Height, 7);
  fill(255);
  textSize(20);
  text("+1", button1X + button1Width / 2, button1Y + button1Height / 2);
  fill(255, 0, 0);
  rect(button2X, button2Y, button2Width, button2Height, 7);
  fill(255);
  textSize(20);
  text("-1", button2X + button2Width / 2, button2Y + button2Height / 2);
  
  //button secondo giocatore
  fill(0, 100, 255);
  rect(button3X, button3Y, button3Width, button3Height, 7);
  fill(255);
  textSize(20);
  text("+1", button3X + button3Width / 2, button3Y + button3Height / 2);
  fill(0, 100, 255);
  rect(button4X, button4Y, button4Width, button4Height, 7);
  fill(255);
  textSize(20);
  text("-1", button4X + button4Width / 2, button4Y + button4Height / 2);
  
  //reset button
  fill(100);
  rect(resetX, resetY, resetWidth, resetHeight, 7);
  fill(255);
  textSize(20);
  text("RESET", resetX + resetWidth / 2, resetY + resetHeight / 2);
}

void mousePressed() {
  //funzionalita button primo giocatore
  if (mouseX >= button1X && mouseX <= button1X + button1Width &&
      mouseY >= button1Y && mouseY <= button1Y + button1Height) {
    punti1 += 1;
    label1Text = ""+punti1;
  }
  if (mouseX >= button2X && mouseX <= button2X + button2Width &&
      mouseY >= button2Y && mouseY <= button2Y + button2Height) {
    punti1 -= 1;
    label1Text = ""+punti1;
  }
  
  //funzionalita button secondo giocatore
  if (mouseX >= button3X && mouseX <= button3X + button1Width &&
      mouseY >= button3Y && mouseY <= button3Y + button1Height) {
    punti2 += 1;
    label2Text = ""+punti2;
  }
  if (mouseX >= button4X && mouseX <= button4X + button2Width &&
      mouseY >= button4Y && mouseY <= button4Y + button2Height) {
    punti2 -= 1;
    label2Text = ""+punti2;
  }
  
  //reset
  if (mouseX >= resetX && mouseX <= resetX + resetWidth &&
      mouseY >= resetY && mouseY <= resetY + resetHeight) {
    punti1 = 0;
    punti2 = 0;
    label1Text = "0";
    label2Text = "0";
  }
}
