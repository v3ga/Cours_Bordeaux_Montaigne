// Variables
PImage img;
int x = 0; // position en x du pixel choisi
int y = 0; // position en y du pixel choisi
color c; // couleur de l'image img à la position (x,y)
int mode=3; // mode de pointillisme : 0 / ellipse, 1 / ellipse no fill, 2 / rect, 3 / triangle, 4 / lignes

void setup()
{
  img = loadImage("tricodeur.jpg");
  size(500,333); // taille en pixels de l'image de l'image pour que get(x,y) fonctionne
}

void draw()
{
//  for (int i=0; i<50; i++)
  {
    x = int( random(0,img.width) );
    y = int( random(0,img.height) );
    c = img.get(x,y);
    if (mode == 0)
    {
      noStroke();
      fill( c );
      ellipse(x,y,mouseX,mouseX);
    }
    if (mode == 1)
    {
      stroke( c );
      noFill();
      ellipse(x,y,mouseX,mouseX);
    }
    if (mode == 2)
    {
      rectMode(CENTER);
      noStroke();
      fill( c );
      rect(x,y,30,30);
    }
    if (mode == 3)
    {
      noStroke();
      fill( c, 30);
      triangle(x,y,x+random(-30,30),y,x,y+60);      
    }
    if (mode == 4)
    {
      stroke(c);
      noFill();
      line(x,y,x+random(-20,20),y+random(-20,20));
    }
  }
}

void mousePressed()
{
  saveFrame("pointillisme.png");
}