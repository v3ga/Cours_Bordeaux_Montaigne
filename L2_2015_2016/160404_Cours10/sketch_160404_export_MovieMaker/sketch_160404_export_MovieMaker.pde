void setup()
{
  size(600,600);
}

void draw()
{
  ellipse(mouseX,mouseY,50,50);
  saveFrame("export/#####.png");
}