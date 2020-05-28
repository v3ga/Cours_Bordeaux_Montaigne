// --------------------------------------------
import processing.svg.*;
import processing.pdf.*;

// --------------------------------------------
boolean bExportSVG = false;
float t = 0.0;
ArrayList<Sketch> sketches = new ArrayList<Sketch>();
Sketch sketch = null;
PApplet applet;

// --------------------------------------------
void settings()
{
  sketches.add( new SketchGrid() ); // 0
  sketches.add( new SketchColineB() ); // 1
  sketches.add( new SketchColineG() ); // 2
  sketches.add( new SketchJosselin() ); // 3
  sketches.add( new SketchTifani() ); // 4
  sketches.add( new Sketch_Lola_Wendy() ); // 5
  sketches.add( new SketchSamia() ); // 6
  sketches.add( new SketchAuxane() ); // 7
  sketches.add( new SketchGorka() ); // 8 -> record debut
  sketches.add( new SketchAurelie() ); // 9 -> noLoop
  sketches.add( new Sketch_Dillon_Paola() ); // 10 
  sketches.add( new SketchEmeric() ); // 11
  sketches.add( new SketchTim() ); // 12
  sketches.add( new SketchLily() ); // 13 -> à importer directement pour le texte
  sketches.add( new Sketch_Zoe_Eva() ); // 14 
  sketches.add( new SketchClara() ); // 15 
  sketches.add( new SketchSarah() ); // 16 
  sketches.add( new SketchPamela() ); // 17 
  sketches.add( new Sketch_Ludivine_Lisa() ); // 18
  sketches.add( new Sketch_Maixane_Valentine() ); // 19
  sketches.add( new SketchLucie() ); // 20
  sketches.add( new SketchNolwen() ); // 21
  sketches.add( new Sketch_Laurine_Cecile() ); // 22
  sketches.add( new Sketch_Melodie_Marion() ); // 23

  sketch = sketches.get(1);

  sketch.settings();
}

// --------------------------------------------
void setup()
{
  applet = this;
  if (sketch != null)
  {
    sketch.setup();
    surface.setTitle("LAG4U6 // 2020 - " + sketch.id);  
  }
}


// --------------------------------------------
void draw()
{
  t = millis()/1000.0;

  if (sketch != null)
  {
    sketch.drawBackground();
    if (sketch.enableKeyPressedRecord)
      sketch.record();
    sketch.setFillStroke();
    for (int i=0; i<sketch.nbDrawAccumulationMax; i++)
      sketch.draw();
    if (sketch.enableKeyPressedRecord)
      sketch.recordEnd();
  }
}

void keyPressed()
{
  if (sketch != null && sketch.enableKeyPressedRecord)
  {
    if (key == ' ')
    {
      bExportSVG = true;
    }
  }
}
