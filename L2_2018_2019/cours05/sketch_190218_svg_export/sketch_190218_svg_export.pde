import processing.svg.*;

void setup()
{
  size(500,500);
  beginRecord(SVG, "export.svg");
}

void draw()
{
  if (mousePressed)
    ellipse(mouseX,mouseY,50,50);
}

void keyPressed()
{
  endRecord();
   exit();
}
