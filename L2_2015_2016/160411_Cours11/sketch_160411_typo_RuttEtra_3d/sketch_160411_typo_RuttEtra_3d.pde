// ------------------------------------------------------
import processing.pdf.*;

// ------------------------------------------------------
RuttEtraizer re;
PImage img;
boolean export = false;

// ------------------------------------------------------
void setup()
{
  size(1000, 1000, P3D);
  img = loadImage("A.png");
  re = new RuttEtraizer(img, 10);
}

// ------------------------------------------------------
void draw()
{
  if (export)
  {
    beginRaw(PDF, "export.pdf");
  }
  background(255);
  translate(width/2, height/2);
  rotateX( map(mouseY, 0, height, -PI/2, PI/2) );
  stroke(0);
  re.setDrawMode(1); // valeur 0 -> 5 (à essayer)
  re.draw(this, mouseX);
  if (export)
  {
    endRaw();
    export = false;
  }
}

// ------------------------------------------------------
void keyPressed()
{
  if (key == ' ')
  {
    export = true;
  }
}
