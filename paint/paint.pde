int tasto;

void setup(){
  background(240);
  size(1000, 700);
}

void draw(){
  fill(10);
  textSize(20);
  text("1: rosso  2: blu  c: cancella tutto  g: gomma. Il nero va in automatico", 10, 20);
  if(keyPressed){
    tasto = key;
    switch(tasto){
      case '1':  //disegna rosso
        if(mousePressed){
          fill(255, 0, 0);
          circle(mouseX, mouseY, 15);
          noStroke();
          fill(10);
          textSize(20);
          text("1: rosso  2: blu  c: cancella tutto  g: gomma. Il nero va in automatico", 10, 20);
        }
        break;
      case '2':  //disegna blu
        if(mousePressed){
          fill(0, 0, 255);
          circle(mouseX, mouseY, 15);
          noStroke();
          fill(10);
          textSize(20);
          text("1: rosso  2: blu  c: cancella tutto  g: gomma. Il nero va in automatico", 10, 20);
        }
        break;
      case 'c':  //cancella tutto
        background(240);
        fill(10);
        textSize(20);
        text("1: rosso  2: blu  c: cancella tutto  g: gomma. Il nero va in automatico", 10, 20);
        break;
      case 'g':  //gomma
        if(mousePressed){
          fill(240);
          circle(mouseX, mouseY, 15);
          noStroke();
          fill(10);
          textSize(20);
          text("1: rosso  2: blu  c: cancella tutto  g: gomma. Il nero va in automatico", 10, 20);
        }
        break;
      default:  //disegna nero
        if(mousePressed){
          fill(0, 0, 0);
          circle(mouseX, mouseY, 15);
          noStroke();
          fill(10);
          textSize(20);
          text("1: rosso  2: blu  c: cancella tutto  g: gomma. Il nero va in automatico", 10, 20);
        }
        break;
    }
    
  }
  else{
    switch(tasto){
      case '1':
        if(mousePressed){
          fill(255, 0, 0);
          circle(mouseX, mouseY, 15);
          noStroke();
          fill(10);
          textSize(20);
          text("1: rosso  2: blu  c: cancella tutto  g: gomma. Il nero va in automatico", 10, 20);
        }
        break;
      case '2': 
        if(mousePressed){
          fill(0, 0, 255);
          circle(mouseX, mouseY, 15);
          noStroke();
          fill(10);
          textSize(20);
          text("1: rosso  2: blu  c: cancella tutto  g: gomma. Il nero va in automatico", 10, 20);
        }
        break;
      case 'c':
        background(240);
        fill(10);
        textSize(20);
        text("1: rosso  2: blu  c: cancella tutto  g: gomma. Il nero va in automatico", 10, 20);
        break;
      case 'g':
        if(mousePressed){
          fill(240);
          circle(mouseX, mouseY, 15);
          noStroke();
          fill(10);
          textSize(20);
          text("1: rosso  2: blu  c: cancella tutto  g: gomma. Il nero va in automatico", 10, 20);
        }
        break;
      default:
        if(mousePressed){
          fill(0, 0, 0);
          circle(mouseX, mouseY, 15);
          noStroke();
          fill(10);
          textSize(20);
          text("1: rosso  2: blu  c: cancella tutto  g: gomma. Il nero va in automatico", 10, 20);
        }
        break;
    }
  }
}
