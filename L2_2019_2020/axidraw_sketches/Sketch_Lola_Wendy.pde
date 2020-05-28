class Sketch_Lola_Wendy extends Sketch
{
  Sketch_Lola_Wendy()
  {
    super("Lola_Wendy");
  }

  void settings()
  {
    size(400, 600);
  }

  void setup()
  {
    frameRate(3);
  }

  void draw()
  {
    beginShape (); //1_tige
    curveVertex (180, 600);
    curveVertex (180, 600);
    curveVertex (80, 530);
    curveVertex (60, 480);
    curveVertex (80, 480);
    endShape ();
    beginShape (); //2_tige
    curveVertex (200, 600);
    curveVertex (200, 600);
    curveVertex (180, 490);
    curveVertex (100, 300);
    curveVertex (100, 300);
    endShape ();
    beginShape (); // 3_tige
    curveVertex (220, 600);
    curveVertex (220, 600);
    curveVertex (225, 425);
    curveVertex (290, 350);
    curveVertex (290, 350);
    endShape ();
    beginShape (); //4_tige
    curveVertex (240, 600);
    curveVertex (240, 600);
    curveVertex (330, 550);
    curveVertex (330, 500);
    curveVertex (300, 530);
    endShape ();

    //pissenlits
    for (int i=0; i<15; i++)
    {
      curve (60, 480, 60, 480, random (10, 130), random (390, 480), random (20, 130), random (80, 340));
      curve (100, 300, 100, 300, random (20, 180), random (190, 328), random (20, 160), random (120, 160));
      curve (290, 350, 290, 350, random (220, 390), random (240, 370), random (200, 390), random (200, 300));
      curve (330, 500, 330, 500, random (260, 380), random (410, 520), random (270, 380), random (320, 500));
    }

    //cercles partie haute
    circle (20, 50, 5);
    circle (60, 50, 20); //barette1
    circle (175, 50, 50); //barette1
    circle (60, 100, 5);
    circle (130, 18, 10);
    circle (60, 150, 10);
    circle (20, 150, 20);
    circle (100, 100, 20);//barette2
    circle (100, 170, 10);//barette2
    circle (175, 100, 15);
    circle (230, 130, 10); //barette3
    circle (280, 130, 20);//barette3
    circle (230, 100, 5);
    circle (260, 50, 10);
    circle (260, 18, 20);
    circle (175, 175, 25);
    circle (230, 220, 10);
    circle (320, 50, 20);//barette4
    circle (320, 130, 10);//barette4
    circle (365, 90, 10);
    circle (280, 180, 10);//barette5
    circle (360, 180, 40);//barette5

    //cercles autour pissenlits
    circle (200, 340, 7);
    circle (170, 390, 20);
    circle (30, 350, 12);
    circle (40, 550, 20);
    circle (85, 575, 5);
    circle (375, 570, 10);

    //line
    line (70, 50, 150, 50);
    line (100, 110, 100, 165);
    line (230+5, 130, 280-10, 130);
    line (320, 60, 320, 125);
    line (285, 180, 360-20, 180);
  }
}
