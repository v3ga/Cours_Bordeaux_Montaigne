int mode = 0; // 

void setup() 
{
  size(500,500,P3D);
  background(127);
}

void draw()
{
  translate(width/2, height/2);
  rotate( radians(mouseX) );
  if (mousePressed)
  {
    if (mode == 0)
    {
      noStroke();
      beginShape();
        fill(255,255); vertex(random(100,150),0);
        fill(0,255); vertex(200,30);
        fill(0,255); vertex(200,-30);
      endShape();
    }
    else if (mode == 1)
    {
      noStroke();
      fill(255,0,0,10);
      triangle(random(200),0, 200,30, 200,-30);
    }
  }
}