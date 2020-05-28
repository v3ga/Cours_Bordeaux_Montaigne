class Sketch_Dillon_Paola extends Sketch
{
  Sketch_Dillon_Paola()
  {
    super("Dillon_Paola");
    this.nbDrawAccumulationMax = 20;
  }

  void draw()
  {
    beginShape();

    curveVertex(0, 100);
    curveVertex(0, random(90, 120));
    curveVertex(50, random(50, 80));
    curveVertex(100, random(95, 125));
    curveVertex(150, random(80, 110));
    curveVertex(200, random(40, 70));
    curveVertex(250, random(0, 30));
    curveVertex(300, random(0));
    curveVertex(300, random(0, -20));



    endShape();
    //2
    beginShape();

    curveVertex(0, 130);
    curveVertex(0, random(150, 180));
    curveVertex(50, random(100, 130));
    curveVertex(100, random(160, 190));
    curveVertex(150, random(160, 190));
    curveVertex(200, random(130, 160));
    curveVertex(250, random(100, 130));
    curveVertex(300, random(160, 190));
    curveVertex(350, random(195, 225));
    curveVertex(400, random(125, 155));
    curveVertex(450, random(30, 60));
    curveVertex(500, random(-20, 10));
    curveVertex(500, -600);


    endShape();

    //3
    beginShape();

    curveVertex(0, 220);
    curveVertex(0, random(210, 240));
    curveVertex(50, random(150, 180));
    curveVertex(100, random(210, 240));
    curveVertex(150, random(290, 340));
    curveVertex(200, random(240, 270));
    curveVertex(250, random(240, 270));
    curveVertex(300, random(325, 255));
    curveVertex(350, random(330, 360));
    curveVertex(400, random(270, 300));
    curveVertex(450, random(265, 295));
    curveVertex(500, random(230, 260));
    curveVertex(550, random(100, 130));
    curveVertex(600, random(100, 130));
    curveVertex(600, 120);


    endShape();
    // bot
    beginShape();

    curveVertex(385, 400);
    curveVertex(385, random(380, 410));
    curveVertex(400, random(330, 360));
    curveVertex(450, random(300, 330));
    curveVertex(500, random(320, 350));
    curveVertex(550, random(245, 275));
    curveVertex(600, random(245, 275));
    curveVertex(300, random(325, 255));



    endShape();
  }
}
