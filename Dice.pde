  void setup()
  {
      noLoop();
      size(200, 200);
      dice = new Die(50, 50);
  }
  void draw()
  {
    dice.roll();
    dice.show();
      //your code here
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int diceX, diceY;
      Die(int x, int y) //constructor
      {
        diceX = x;
        diceY = y;
          //variable initializations here
      }
      void roll()
      {
          //your code here
      }
      void show()
      {
        rect(diceX, diceY, 10, 10, 4);
          //your code here
      }
  }
