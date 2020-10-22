 Cell[] cancer = new Cell[20000];
void setup ()
{
  size(500,500);
  mousePressed();
}
void mousePressed() 
{
  for ( int i = 0; i < cancer.length; i++)
  {
    cancer[i] = new Cell();
  }
}
void draw()
{
  background(0);
  for (int i = 0; i < cancer.length; i++)
  {
    cancer[i].show();
    cancer[i].move();
  }
}
class Cell 
{
  int myColor;
  int mySize;
  int myX;
  float myY;
Cell() //Contructor
{
  myX = mouseX;
  myY = mouseY;
  myColor = color(245, 117, 108);
  mySize = (int)(Math.random()*15)+10;
}
void move()
{
  myY = myY + (int)(Math.random()*11)-5;
  myX = myX + (int)(Math.random()*11)-5;
}
void show()
{
  fill(myColor);
  stroke(myColor);
  ellipse(myX,myY,mySize,mySize);
}
}
