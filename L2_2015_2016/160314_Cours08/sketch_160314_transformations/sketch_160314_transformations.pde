float angle = 0;
float taille = 0;
float x = 0;

void setup()
{
  size(500,500);
}

void draw()
{
  if (  mousePressed )
  {
    angle = map(mouseX, 0,width, 0,360*2);
    taille = map(mouseX, 0,width, 0,200);
    x = map(mouseX, 0,width, 0, 80);
    translate(width/2,height/2);
    rotate( radians( angle ) );
    rect(x,0,taille,10);
  }
}