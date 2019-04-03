void setup()
{
  size(500,500);
}

void draw()
{
  background(255);
  noStroke();
  fill(0,100);
  if (mouseX>100 && mouseX<200 && mouseY>100 && mouseY<150)
  {
    fill(0,255);    
  }
  rect(100,100,100,50);
}