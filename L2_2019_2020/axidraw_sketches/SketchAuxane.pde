class SketchAuxane extends Sketch
{
  SketchAuxane()
  {
    super("Auxane");
  }


  void draw()
  {
//    strokeWeight(1/2);

    //ligne1

    noFill();
    //rect(280, 50, 55, 55);
      stroke(0, 0, 0, 100);
    for (int i = 0; i < 75; i++) {
      stroke(0, 0, 0, 100);
      bezier(random(280, 335), random(50, 105), 290, 55, 305, 85, 280, 105);

      //ligne2
      //rect(225, 105, 55, 55);
      bezier(random(225, 280), random(105, 160), 230, 105, 280, 90, 280, 160);

      //rect(280, 105, 55, 55);
      bezier(random(280, 335), random(105, 160), 305, 120, 300, 160, 335, 105);

      //rect(335, 105, 55, 55);
      bezier(random(335, 390), random(105, 160), 390, 170, 350, 100, 390, 105);

      //ligne3
      //rect(170, 160, 55, 55);
      bezier(random(170, 225), random(160, 215), 225, 160, 190, 215, 170, 160);

      bezier(random(0, 225), random(0, 160), 100, 100, 200, 0, 225, 160);

      //rect(225, 160, 55, 55);
      bezier(random(225, 280), random(160, 215), 225, 160, 190, 215, 170, 160);

      //rect(280, 160, 55, 55);
      bezier(random(280, 335), random(160, 215), 305, 190, 290, 215, 335, 215);

      //rect(335, 160, 55, 55);
      bezier(random(335, 445), random(160, 215), 390, 200, 445, 160, 445, 215);

      //rect(390, 160, 55, 55);
      bezier(random(335, 445), random(160, 215), 390, 200, 445, 160, 445, 215);

      bezier(random(390, 600), random(0, 160), 600, 100, 450, 0, 390, 160);

      //ligne4
      //rect(225, 215, 55, 55);
      bezier(random(225, 280), random(215, 270), 250, 230, 280, 270, 225, 270);

      bezier(random(0, 225), random(215, 400), 100, 250, 200, 350, 225, 215);

      //rect(280, 215, 55, 55);
      bezier(random(280, 335), random(215, 270), 300, 230, 335, 270, 280, 215);

      //rect(335, 215, 55, 55);
      bezier(random(335, 390), random(215, 270), 335, 215, 335, 270, 390, 270);

      bezier(random(390, 600), random(215, 400), 600, 250, 400, 350, 390, 215);

      //ligne5
      //rect(280, 270, 55, 55);  
      bezier(random(280, 335), random(270, 325), 290, 300, 335, 270, 280, 325);
   }
  }
}
