import processing.svg.*;
import java.util.*;

boolean bExport = false;
float d =25;
float s =1;
int r =0;
void setup()
{
  size(630, 900);
  frameRate(1);
}
void draw()
{
  background(255);
  noFill();
  stroke(0);

  if (bExport)
  {
    beginRecord(SVG, timestamp()+"_export.svg");
  }
  for (float Y=d/2; Y<=height; Y=Y+d)
  {
    for (float X=d/2; X<=width; X=X+d)
    {
      r=int(random(0, 4));
      if (r==0)
      {
        beginShape();
        vertex(X-d/2, Y-d/2);
        vertex(X-d/2, Y-d/4);
        vertex(X+d/4, Y+d/2);
        vertex(X+d/2, Y+d/2);
        vertex(X+d/2, Y+d/4);
        vertex(X-d/4, Y-d/2);
        vertex(X-d/2, Y-d/2);
        endShape();
      }
      if (r==1)
      {
        beginShape();
        vertex(X-d/2, Y-d/2);
        vertex(X-d/2, Y-d/4);
        vertex(X+d/4, Y+d/2);
        vertex(X+d/2, Y+d/2);
        vertex(X+d/2, Y+d/4);
        vertex(X-d/4, Y-d/2);
        vertex(X-d/2, Y-d/2);
        endShape();
      }
      if (r==2)
      {
        beginShape();
        vertex(X+d/2, Y-d/2);
        vertex(X+d/2, Y-d/4);
        vertex(X-d/4, Y+d/2);
        vertex(X-d/2, Y+d/2);
        vertex(X-d/2, Y+d/4);
        vertex(X+d/4, Y-d/2);
        vertex(X+d/2, Y-d/2);
        endShape();
      }
      if (r==3)
      {
        beginShape();
        vertex(X+d/2, Y-d/2);
        vertex(X+d/2, Y-d/4);
        vertex(X-d/4, Y+d/2);
        vertex(X-d/2, Y+d/2);
        vertex(X-d/2, Y+d/4);
        vertex(X+d/4, Y-d/2);
        vertex(X+d/2, Y-d/2);
        endShape();
      }
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
