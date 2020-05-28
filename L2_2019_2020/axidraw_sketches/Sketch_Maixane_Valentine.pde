class Sketch_Maixane_Valentine extends Sketch
{
  int nbMotifs = 8;
  boolean anim = false;
  float largeurMotif = 0;
  float xMotifs = 0;

  Sketch_Maixane_Valentine()
  {
    super("Maixane_Valentine");
  }

  void draw()
  {
    t = millis() / 1000.0;
    nbMotifs = 30;
    xMotifs = 10;

    background(255);
    noFill();
    stroke(0);
    translate(width/2, height/2);
    for (int i=0; i<nbMotifs; i=i+1)
    {
      if (anim)
        largeurMotif = 150*sin(radians(90*t + i*10));
      else
        largeurMotif = 50;

      ellipse(xMotifs, 50, largeurMotif, 50);
      rect(xMotifs, 50, largeurMotif, 50);
      ellipse(xMotifs, 130, largeurMotif, 50);
      rect(xMotifs, 150, largeurMotif, 50);
      ellipse(xMotifs, 210, largeurMotif, 50);
      rect(xMotifs, 250, largeurMotif, 50);
      ellipse(xMotifs, 300, largeurMotif, 50);
      line(0, 0, 0, 0);

      rotate( radians(360.0/nbMotifs) );
    }
  }
}
