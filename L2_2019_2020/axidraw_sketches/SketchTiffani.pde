class SketchTifani extends Sketch
{
  int nbMotifs = 38;
  float xMotifs = 80;
  float largeurMotif = 50;

  SketchTifani()
  {
    super("Tifani");
  }

  void settings()
  {
    size(600,400);
  }


  void draw()
  {
    translate(width/2, height/2);
    for (int i = 0; i<nbMotifs; i++) {
      monMotif();
      rotate( radians(360.0/nbMotifs) );
    }
  }

  void monMotif() {
    ellipse(xMotifs-100, 20, largeurMotif, 200);
    circle(xMotifs, 0, 40);
    circle(-xMotifs, 0, 40);

    push();  
    translate(-xMotifs, 0);
    for (int i = 0; i<nbMotifs/4; i++) {
      circle(60, 0, 10);
      rotate( radians(360.0/(nbMotifs/4)) );
    }
    circle(-70, 0, random(5, 30));
    circle(random(-120, -80), 20, random(5, 30));
    pop();
  }
}
