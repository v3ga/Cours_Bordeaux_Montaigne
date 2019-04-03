float r = 0;
float taille = 10;

void setup()
{
  size(500,500);
  noLoop(); // permet de ne faire qu'un seul draw
}

void draw()
{
  background(255);
  noFill();

  stroke(0,200);
  strokeWeight(2);
  for (float y=0 ; y<=500; y = y+taille)
  {
    for (float x=0; x<=500; x = x+taille)
    {
      // ellipse(x,y,mouseX,mouseX);
      // rect(x,y,random(0,35), random(0,35));
      r = random(0,1);
      if (r < 0.25)
      {
        line(x,y,x+taille,y+taille);
      }
      else if (r < 0.5)
      {
        line(x+taille,y,x,y+taille);
      }
      else if (r < 0.75)
      {
        line(x,y+taille/2,x+taille,y+taille/2 );
      }
      else
      {
        line(x+taille/2, y, x+taille/2, y+taille);       
      }
    }
  }
}