class Sketch_Melodie_Marion extends Sketch
{

  int nbMotifs = 30;
  float xMotifs = 0;
  float largeurMotif=0;

  Sketch_Melodie_Marion()
  {
    super("Melodie_Marion");
  }

  void settings()
  {
    super.settings();
  }


  void draw()
  {
    nbMotifs = 30;
    xMotifs = 100;

    translate(width/2, height/2);
    for (int i=0; i<nbMotifs; i=i+1)
    {

      largeurMotif = random(0, 100);

      magique(xMotifs, 0, largeurMotif);
      ellipse(random(160, 240), 0, 5, 5);
      ellipse(random(160, 240), 16, 5, 5);
      ellipse(random(160, 240), 37, 5, 5);

      rotate( radians(360.0/nbMotifs) );
    }
  }

  void  magique(float x, float y, float taille) 
  {
    rectMode(CENTER);
    stroke(0);
    noFill();
    rotate (radians (random (0, 90)));
    strokeWeight(1);
    rect(x, y, taille, taille);
    strokeWeight(1.6);
    rect(x, y, taille/1.5, taille/1.5);
    strokeWeight(1);
    rect(x, y, taille/3, taille/3);
  }
}
