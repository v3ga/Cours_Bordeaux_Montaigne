void setup() 
{
  size(400, 400);
  frameRate(10);
  surface.setTitle("Cours 03 / Animer / Random rectangles");
}

void draw() 
{
  // background(220);
  noFill();
  stroke(0, 0, 0, 100);
  // circle( random(100,300) , random(100,300) ,100);
  rect(width/2, height/2, random(-200, 200), random(-200, 200));
}

void keyPressed()
{
  saveFrame("export.png");
}
