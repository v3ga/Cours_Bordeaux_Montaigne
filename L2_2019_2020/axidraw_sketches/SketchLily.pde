class SketchLily extends Sketch
{
  float largeur = 10;
  float hauteur = 20;
  float resx = 15; 
  float resy = 15; 
  float r=1; 

  SketchLily()
  {
    super("Lily");
  }

  void setup()
  {
    super.setup();  
    largeur = width / resx;
    hauteur = height / resy;
  }

  void draw()
  {
    motif1(0, 0, largeur);
    motif2(0, 0, largeur);
//    textSize(35);
//    strokeWeight(2);
    fill(0);
//    text("Design", 440, 142);
//    text("Design", 440, 112);
//    text("Design", 440, 82);
//    text("Design", 440, 52);
//    text("Design", 440, 172);
//    text("Design", 440, 202);
//    strokeWeight(4);
//    rect(421, 17, 150, 200);
  }

  void motif1(float x_, float y_, float taille) 
  {
    float x,y;
  for (y=0; y<230; y= y+hauteur)
  {
    for (x=0; x<600; x= x+largeur)
    {
      r = int(random(0,3));

      if (r == 0)
      {
      line(x,y,x+largeur,y+hauteur);
      }
      else if (r == 1)
      {
      line(x+largeur,y,x,y+hauteur);
      }
      else if (r == 2)
      {
      line(x,y+hauteur/2, x+largeur, y+hauteur/2);
      }
      else if (r == 3)
      {
      line(x+largeur/2,y,x+largeur/2,y+hauteur); 
      }
    }
  }
  }
  void motif2(float x_, float y_, float taille) {
    stroke(0);
    noFill();
//    strokeWeight(2.5);
float x,y;
  for(y=244; y<height; y=y+hauteur)
  {
    for (x=-20; x<width; x=x+hauteur)
    {
      line(x,y,x+largeur,y+hauteur);
      line(x+largeur,y,x,y+hauteur);
    }
  }
  }
}
