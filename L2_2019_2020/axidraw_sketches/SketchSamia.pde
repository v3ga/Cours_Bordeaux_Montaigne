class SketchSamia extends Sketch
{
  int nbMotifs = 50;
  boolean anim = false;
  float xMotifs = 10;
  float largeurMotif;

  SketchSamia()
  {
    super("Samia");
  }

  void settings()
  {
    size(600,400);
  }

  void draw()
  {
    translate(width/2, height/2);
    for (int i=0; i<nbMotifs; i=i+1)  
    {
      if (anim)
        largeurMotif = 140*sin(radians(90*t + i*10));
      else
        largeurMotif = 140;

      triangle(xMotifs, 10, largeurMotif, 100, 120, 170);
      triangle(xMotifs, 100, largeurMotif, 10, 10, 200);
      ellipse(xMotifs, 40, largeurMotif, 50);
      line(50, 0, 80, 50);
      rotate( radians(860.0/nbMotifs) );
    }
  }
}
