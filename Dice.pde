 int sum = 0;
 int play1Total= 0;
 int play2Total= 0;
 int numRoll = 0;
 int pointsX = 90;
  void setup()
  {
      noLoop();
      size(300, 300);
      background(150, 200, 255);
      noStroke();
      fill(200, 200, 255);
      rect(0, 0, 300, 220);
      textSize(15);
      fill(0, 0, 0);
      text("Player 1: ", 20, 250);
      text("Player 2: ", 20, 280);
      text("Total: ", 210, 250);
      text("Total: ", 210, 280);
  }
  
  void restart() {
    //set values and screen back to orignal
    sum = 0;
    play1Total= 0;
    play2Total= 0;
    numRoll = 0;
    pointsX = 90;
    setup();
  }
  
  void mousePressed()
  {
    sum = 0;
    redraw();
  }
  void draw()
  {
    stroke(0, 0, 0);
    numRoll ++;
    
    //draw dice
    for (int numY = 20; numY < 200; numY += 70) {
      for (int numX = 20; numX < 250; numX += 70) {
        //make columns and rows of dice
        ran = new Die(numX, numY);
        ran.show();
      }
    }
    
    //points
   if (numRoll < 7) {
     if (numRoll % 2 > 0) {
       text(sum, pointsX, 250); 
       play1Total += sum;
     }
     else {
       text(sum, pointsX, 280);
       pointsX += 40;
       play2Total += sum;
     }
   if (numRoll == 5)
     text(play1Total, 260, 250);
   if (numRoll == 6)
     text(play2Total, 260, 280);
   }
   if (numRoll > 6)
     restart();
  }
 Die ran; //declare a ran object
  class Die //models one single dice cube
  {
      int diceX, diceY, num;
      Die(int x, int y) //constructor
      {
        diceX = x;
        diceY = y;
        roll();
        //variable initializations here
      }
      void roll() //member functions
      {
        num = (int)(Math.random() * 6 + 1);
        sum = sum + num;
      }
      void show()
      {
        fill((int)(Math.random() * 220) + 25, (int)(Math.random() * 220) + 25, (int)(Math.random() * 220) + 25);
        strokeWeight(1.5);
        rect(diceX, diceY, 40, 40, 6);
        fill(0, 0, 0);
        if (num == 1)
          //middle dot
          ellipse(diceX + 20, diceY + 20, 5, 5); 
        else if (num == 2) {
          //upper right and lower left dots
          ellipse(diceX + 10, diceY + 10, 5, 5);
          ellipse(diceX + 30, diceY + 30, 5, 5);
        }
        else if (num == 3) {
          //diagonal from upper right to left dots
          ellipse(diceX + 20, diceY + 20, 5, 5);
          ellipse(diceX + 30, diceY + 10, 5, 5);
          ellipse(diceX + 10, diceY + 30, 5, 5);
        }
        else if (num == 4) {
          //four corners dots
          ellipse(diceX + 30, diceY + 10, 5, 5);
          ellipse(diceX + 10, diceY + 30, 5, 5);
          ellipse(diceX + 10, diceY + 10, 5, 5);
          ellipse(diceX + 30, diceY + 30, 5, 5);
        }
        else if (num == 5) {
          //four corners and middle dots
          ellipse(diceX + 30, diceY + 10, 5, 5);
          ellipse(diceX + 10, diceY + 30, 5, 5);
          ellipse(diceX + 10, diceY + 10, 5, 5);
          ellipse(diceX + 30, diceY + 30, 5, 5);
          ellipse(diceX + 20, diceY + 20, 5, 5); 
        }
        else {
          //two column two rows dots
          ellipse(diceX + 30, diceY + 10, 5, 5);
          ellipse(diceX + 10, diceY + 30, 5, 5);
          ellipse(diceX + 10, diceY + 10, 5, 5);
          ellipse(diceX + 30, diceY + 30, 5, 5);
          ellipse(diceX + 10, diceY + 20, 5, 5);
          ellipse(diceX + 30, diceY + 20, 5, 5);
        }
  }
  }
 
