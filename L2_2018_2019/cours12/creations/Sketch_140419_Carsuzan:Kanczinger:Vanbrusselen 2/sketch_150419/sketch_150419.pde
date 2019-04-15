import processing.svg.*;

import processing.pdf.*;
import java.util.*;

float d = 30;
int motif = 0;
boolean bExport = false;

void setup()
{
  size(630, 900);
  frameRate(1); //appellez draw une fois par seconde
}
void draw()
{
  background(255);
  if (bExport)  
    beginRecord(SVG, "export.svg");

  for (float y = d/2; y <= 900; y = y+d)
  {
    for (float x = d/2; x <= 900; x = x+d)
    {
      motif = int(random(0, 4));
      if (motif == 0)
      {
        line (x+d/2, y+d/2, x+d/2, y-d/2);
      }
      if (motif == 1)
      {
        line (x+d/2, y-d/2, x-d/2, y+d/2);
      }
      if (motif == 2)
      {
        line (x+d/2, y+d/2, x-d/2, y+d/2);
      }
      strokeWeight(1);
    }
  }
  if (bExport)
  {
    bExport = false;
    endRecord();
  }
}
void keyPressed()
{
  bExport = true;
//  exit();
}
