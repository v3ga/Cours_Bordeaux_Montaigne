// Pas d'export svg ... 
import processing.svg.*;
import java.util.*;


boolean bExport = false;
static final int NUM_LINES = 100;

float t;

void setup() 
{
  size(630, 900);
}

void draw() 
{
  background(255);
  if (bExport)
  {
    beginRecord(SVG, timestamp()+"_export.svg");
  }
  stroke(0);
  strokeWeight(0.5);

  translate(width/2, height/2);
  for (int i = 0; i < NUM_LINES; i++) {
    line(x1(t + i), y1(t + i), x2(t + i), y2(t + i));
  }
  if (bExport)
  {
    endRecord();
    bExport = false;
  }
  t++;
}

// ----------------------------------------------
void keyPressed()
{
  bExport = true;
}


float x1(float t) 

{
  return sin(t / 10) * 30 + sin(t / 15) * random(20, 40);
}

float y1(float t) 
{
  return cos(t / 10) * 190;
}
float x2(float t) 
{
  return sin(t / 10) * 150 + sin(t) * 2;
}

float y2(float t) 
{
  return cos(t / 20) * 180 + cos(t / 12) * random(30, 50);
}


// ----------------------------------------------
// fonction qui donne un horodatage
String timestamp() 
{
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}
