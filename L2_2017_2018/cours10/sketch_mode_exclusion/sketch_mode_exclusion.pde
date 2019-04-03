void setup()
{
  size(500,500);
}


void draw()
{
  background(0); // fond noir
  blendMode(EXCLUSION);
  noStroke();
  fill(255);
  ellipse(200,250,200,200);
  ellipse(300,250,200,200);
}