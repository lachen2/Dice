
int startX = 150;
int startY = (int)(Math.random() * 10) + 20;
int endX = 0;
int endY = 150;
int bolt = 0;
int stars = 0;
float lightningWidth = 4;

void setup()
{
  size(300, 300);
  background(180, 200, 245);
  frameRate(1);
}

void cloud(int bumps)
{
  noStroke();
  if (startY < 100) {
    for (int i = 0; i < bumps; i++) {
      ellipse(startX - (int)(Math.random() * 70) + 35, startY + (int)(Math.random() * 25) - 30, 80, 40);
    }
  }
}

void draw()
{
  if (bolt < 20) {
  //clouds
  fill(164, 198, 205);
  cloud(8);
  lightningWidth = 4;
  fill(66, 50, 50, 10);
  stroke((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255), 200);
  while (startY < 295) {
    //lightning bolt
    
    //make lightning thinner
    strokeWeight(lightningWidth);
    if (lightningWidth >= 0.4)
      lightningWidth -= 0.05;
      
    endX = startX + (int)(Math.random() * 25) - 12;
    endY = startY + (int)(Math.random() * 12);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  
  //increase lightning bolt count
  bolt ++;
      
  //rain or stars
  noStroke();
  fill((int)(Math.random() * 105), (int)(Math.random() * 105), (int)(Math.random() * 255), 170);
  for (int star = 0; star < 30; star ++)
    ellipse((int)(Math.random() * 301), (int)(Math.random() * 261) + 40, 1.5, 1.5);
    
  //fade
  fill(0, 0, 0, 10);
  rect(-10, -10, 320, 320);
  }
  
  else {
    background(100, 223, 255);
    fill(173, 238, 255);
    cloud(6);
  }
}
    
void mousePressed()
{
  //draw another lightning bolt
  startX = mouseX;
  startY = (int)(Math.random() * 10) + 20;
  endX = 0;
  endY = 150;
  redraw();
}
