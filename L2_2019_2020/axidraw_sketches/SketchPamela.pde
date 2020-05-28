class SketchPamela extends Sketch
{
  int nbMotifs = 8;
  boolean anim = false;
  float largeurMotif = 0;
  float xMotifs = 0;

  SketchPamela()
  {
    super("Pamela");
  }

  void draw()
  {
    translate(width/2, height/2);
    for (int i=0; i<nbMotifs; i=i+1)
    {
      if (anim)
        largeurMotif = 360*sin(radians(200*t + i*10));
      else
        largeurMotif = 80;

      strokeWeight(1.5);
      circle(xMotifs, 177, 46);
      circle(xMotifs, 170, 60);

      strokeWeight(1);
      ellipse(xMotifs, 0, largeurMotif, 60);
      ellipse(xMotifs, 30, largeurMotif, 80);
      triangle(0, 0, 0, 45, 0, 15);
      // Rotation sur un tour 
      rotate( radians(360.0/nbMotifs) );
    }
    triangle(-120, 70, 120, 70, 0, -140);
    triangle(-120, -70, 120, -70, 0, 140);

    strokeWeight(1);
    circle(0, 0, 330);

    beginShape();
    line(-142, -84, -142, 84);
    line(-142, 84, 0, 164);
    line(0, 164, 142, 84);
    line(142, 84, 142, -84);
    line(142, -84, 0, -164);
    line(0, -164, -142, -84);

    endShape();
    for (int i=0; i<nbMotifs; i=i+1)
    {
      if (anim)
        largeurMotif = 360*sin(radians(200*t + i*10));
      else
        largeurMotif = 165;
      strokeWeight(1);
      circle(xMotifs, 50, largeurMotif);

      rotate( radians(360.0/nbMotifs) );
      //triangle(100,0,150,0,0,0)
      triangle(140, 0, 140, 0, 0, 0);
    }
  }
}
