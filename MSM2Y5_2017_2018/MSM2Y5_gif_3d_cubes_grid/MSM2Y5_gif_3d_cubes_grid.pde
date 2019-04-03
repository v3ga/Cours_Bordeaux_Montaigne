// ------------------------------------------
import gifAnimation.*;

// ------------------------------------------
GifMaker gifExport;

// ------------------------------------------
int nbFrames = 120;
int iFrame   = 0;
boolean bExport = false;

// ------------------------------------------
void setup()
{
  size(500,500,P3D);
  
  gifExport = new GifMaker(this, "export.gif", 100);
  gifExport.setRepeat(0); // En boucle
}

// ------------------------------------------
void draw()
{
  background(255);
  if (bExport)
  {
    render( float(iFrame) / float(nbFrames) );
    export();
  }
  else
  {
    render( (frameCount % nbFrames) / float(nbFrames) );
  }
}
// ------------------------------------------
void export()
{
  if(iFrame < nbFrames) 
  {
    gifExport.setDelay(20);
    gifExport.addFrame();
    iFrame++;
  }
  else
  {
    gifExport.finish();    
    bExport = false;
  }
}

// ------------------------------------------
void keyPressed()
{
  if (key == ' ')
  {
    bExport = true;
    iFrame = 0;
  }
}