PShape s;

void setup()
{
  
  size(500,500);
  
  s = createShape();
  s.beginShape();
  s.vertex(15,-45);
  s.vertex(15,-15);
  s.vertex(45,-15);
  s.vertex(45,15);
  s.vertex(15,15);
  s.vertex(15,45);
  s.vertex(-15,45);
  s.vertex(-15,15);
  s.vertex(-45,15);
  s.vertex(-45,-15);
  s.vertex(-15,-15);
  s.vertex(-15,-45);
  s.endShape(CLOSE);
}

void draw()
{
  shape(s,mouseX,mouseY);
}