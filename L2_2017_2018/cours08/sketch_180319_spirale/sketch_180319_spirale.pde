float angle=0; 

void setup()
{
  size(500,500);
}

void draw()
{
  background(0);
  translate(width/2, height/2);
  rotate( radians(angle) );
  noStroke();
  for (float x=0 ; x<=1000; x=x+1)
  {
    fill(255,255);
    rect(x,mouseY,100,2);
    rotate( radians(mouseX/10.0) );
  }
 
  angle = angle+0.5;
}