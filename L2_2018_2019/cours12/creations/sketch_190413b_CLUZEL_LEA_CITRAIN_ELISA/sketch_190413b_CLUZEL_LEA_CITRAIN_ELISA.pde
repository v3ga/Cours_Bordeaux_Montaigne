import processing.svg.*;
import java.util.*;

boolean bExport = false;

float nb=8;
float d=600.0/nb;
float f=1;

void setup()
{
  size(630, 900);
}

void draw()
{
  background(255);
  stroke(0);
  noFill();
  
  if (bExport)
  {
    beginRecord(SVG, timestamp()+"_export.svg");
  }
  
f=mouseX/15.0;
for(float y=d/2; y<=900; y=y+d)
{
  for (float x=d/2; x<=630; x=x+d)
{
ellipse(x, y, f*d, f*d);
}
}
  
  if (bExport)
  {
    endRecord();
    bExport = false;
  }
}

void keyPressed()
{
  bExport = true;
}

String timestamp() 
{
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}
