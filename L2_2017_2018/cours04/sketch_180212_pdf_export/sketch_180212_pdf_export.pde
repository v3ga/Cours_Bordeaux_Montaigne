import processing.pdf.*;

void setup()
{
  size(500,500);
  beginRecord(PDF, "export.pdf");
}

void draw()
{
  if (mousePressed)
    ellipse(mouseX,mouseY,50,50);
}

void keyPressed()
{
  endRecord();
}