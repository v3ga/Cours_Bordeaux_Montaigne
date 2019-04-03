import processing.pdf.*;

void setup()
{
  size(600,600);
  // beginRecord(PDF, "export.pdf");
}

void draw()
{
  if (mousePressed)
  {
    ellipse(mouseX,mouseY,20,20);
  }
}

void keyPressed()
{
  if (key == 's')
  {
    saveFrame("export.png");
  }
  if (key == 'b')
  {
    background(255);
    beginRecord(PDF, "export.pdf");
  }
  if (key == 'p')
  {
    endRecord();
  }
}