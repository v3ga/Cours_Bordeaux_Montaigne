// ------------------------------------------
void render(float t)
{
  float size =  map( sin(TWO_PI * t), -1, 1, 100, 450);
  strokeWeight(10);
  noFill();
  ellipse(width/ 2.0, height / 2.0, size, size);
}