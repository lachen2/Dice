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
          //your code here
      }
      void show()
      {
        fill(255);
        rect(diceX, diceY, 40, 40, 4);
        fill(0, 0, 0);
        text(num, 70, 70);
        if (num == 1)
          ellipse(diceX + 20, diceY + 20, 5, 5);
        else if (num == 2) {
          ellipse(diceX + 30, diceY + 20, 5, 5);
          ellipse(diceX + 10, diceY + 30, 5, 5);
          
        }
          //your code here
      }
  }
    void setup()
  {
      noLoop();
      size(300, 300);
  }
  void draw()
  {
    ran = new Die(50, 50);
    ran.show();
      //your code here
  }
  void mousePressed()
  {
      background(100, 100, 100);
      redraw();
  }
