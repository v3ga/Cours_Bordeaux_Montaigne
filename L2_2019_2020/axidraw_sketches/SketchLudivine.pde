class Sketch_Ludivine_Lisa extends Sketch
{
  int nbMotifs = 50;
  boolean anim = false;
  float largeurMotif = 0;
  float xMotifs = 0;

  Sketch_Ludivine_Lisa()
  {
    super("Ludivine_Lisa");
  }

  void draw()
  {
    push();
    translate(width/2, height/2);
    for (int i=0; i<nbMotifs; i=i+1)
    {
      if (anim)
        largeurMotif = 10*sin(radians(100*t + i*200));
      else
        largeurMotif = 10;

      rect(xMotifs, 100, largeurMotif, 90);
      point(25, 20, largeurMotif);
      point(1, 45, 2);
      point(1, 205, 2);
      point(1, 235, 2);
      point(1, 275, 2);

      ellipse(xMotifs, 100, largeurMotif, 100);

      rotate( radians(360.0/nbMotifs) );
    }
    pop();
    push();

    translate (width/6, height/4);
    for (int i=0; i<nbMotifs; i=i+1)
    {
      if (anim)
        largeurMotif = 10*sin(radians(90*t + i*10));
      else

        largeurMotif = 5.0;
      rect(xMotifs, 40, largeurMotif, 0);
      rotate (radians (360.0/nbMotifs));
    }
    for (int i=0; i<nbMotifs; i=i+1)
    {
      if (anim)
        largeurMotif = 30 *sin(radians(90*t + i*10));
      else
        largeurMotif = 5/10.0;
          ellipse(xMotifs, 20, largeurMotif, 20);
      ellipse(xMotifs, 50, largeurMotif, 50);

      rotate( radians(360.0/nbMotifs) );
    }
    pop();
    translate (width/1-100, height/1-100);
    for (int i=0; i<nbMotifs; i=i+1)
    {

      if (anim)
        largeurMotif = 10*sin(radians(90*t + i*10));
      else

        largeurMotif = 10;
      rect(xMotifs, 80, largeurMotif, 15);
      rotate (radians (360.0/nbMotifs));
    }
    for (int i=0; i<nbMotifs; i=i+1)
    {
      if (anim)
        largeurMotif = 10*sin(radians(90*t + i*10));
      else
        largeurMotif = 10;
      ellipse(xMotifs, 50, largeurMotif, 50);
      ellipse(xMotifs, 50, largeurMotif, 25);

      rotate( radians(360.0/nbMotifs) );
    }
  }
}
