  void setup()
  {
      noLoop();
      size(300, 300);
  }
  void draw()
  {
    for (int numY = 0; numY > 5; numY ++) {
      for (int numX = 0; numX > 5; numX ++) {
        su = new Die(numX, numY);
    }
    }
    ran = new Die(50, 50);
    ran.show();
    su.show();
      //your code here
  }
  void mousePressed()
  {
      background(100, 100, 100);
      redraw();
  }
  Die ran, su; //declare a ran object
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
          //your code here
      }
      void show()
      {
        fill((int)(Math.random() * 220) + 25, (int)(Math.random() * 220) + 25, (int)(Math.random() * 220) + 25);
        strokeWeight(1.5);
        rect(diceX, diceY, 40, 40, 6);
        fill(0, 0, 0);
        text(num, 70, 70);
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
