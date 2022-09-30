  int sum = 0;
  void setup()
  {
      noLoop();
      size(300, 300);
  }
  void mousePressed()
  {
    sum = 0;
    redraw();
  }
  void draw()
  {
    background(230, 200, 255);
    for (int numY = 20; numY < 200; numY += 70) {
      for (int numX = 20; numX < 250; numX += 70) {
        //make columns and rows of dice
        ran = new Die(numX, numY);
        ran.show();
    }
    }
    textSize(15);
    text("Total: " + sum, 220, 250);
    System.out.println(sum);
      //your code here
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
          //your code here
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
