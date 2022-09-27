  class Die //models one single dice cube
  {
      int diceX, diceY, num;
      Die(int x, int y) //constructor
      {
        diceX = x;
        diceY = y;
          //variable initializations here
      }
      void roll()
      {
        num = (int)(Math.random() * 7 + 1);
          //your code here
      }
      void show()
      {
        rect(diceX, diceY, 40, 40, 4);
        fill(0, 0, 0);
        ellipse(diceX + 5, diceY + 5, 8, 8);
          //your code here
      }
  }
  Die ran; //declare a ran object
    void setup()
  {
      noLoop();
      size(300, 300);
      ran = new Die(50, 50);
  }
  void draw()
  {
    ran.roll();
    ran.show();
      //your code here
  }
  void mousePressed()
  {
      redraw();
  }
