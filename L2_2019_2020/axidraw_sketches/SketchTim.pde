class SketchTim extends Sketch
{
  float slotSize = 50;
  float marginX;
  float marginY;


  SketchTim()
  {
    super("Tim");
    marginX = width - int((width / slotSize)) * slotSize;
    marginY = height - int((height / slotSize)) * slotSize;
  }

  void draw()
  {
    for (float i = marginX / 2 + slotSize / 2; i < width - marginX / 2; i += slotSize) {
      for (float j = marginY / 2 + slotSize / 2; j < height - marginY / 2; j += slotSize) {

        float xOffset = map(mouseX, 0, width, -0.5, 0.5);
        float yOffset = map(mouseY, 0, height, -0.5, 0.5);
        line(i + xOffset * (slotSize), j + yOffset * (slotSize), 
          i - slotSize * 0.5, j - slotSize * 0.5);
        line(i + xOffset * (slotSize), j + yOffset * (slotSize), 
          i + slotSize * 0.5, j + slotSize * 0.5);
        line(i + xOffset * (slotSize), j + yOffset * (slotSize), 
          i + slotSize * 0.5, j - slotSize * 0.5);
        line(i + xOffset * (slotSize), j + yOffset * (slotSize), 
          i - slotSize * 0.5, j + slotSize * 0.5);
      }
    }
  }
}
