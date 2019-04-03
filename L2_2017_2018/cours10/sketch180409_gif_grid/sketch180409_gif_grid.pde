// ------------------------------------------
import gifAnimation.*;
import java.util.Calendar;

// ------------------------------------------
GifMaker gifExport;

// ------------------------------------------
int nbFrames = 120;
int iFrame   = 0;
boolean bExport = false;

// ------------------------------------------
void setup()
{
  size(500, 500);
}

// ------------------------------------------
void draw()
{
  background(255);
  if (bExport)
  {
    if (gifExport == null)
    {
      gifExport = new GifMaker(this, "export_"+timestamp()+".gif", 100);
      gifExport.setRepeat(0);
    }

    render( float(iFrame) / float(nbFrames) );

    if (iFrame < nbFrames) 
    {
      gifExport.setDelay(20);
      gifExport.addFrame();
      iFrame++;
    }
    if (iFrame == nbFrames)
    {
      gifExport.finish();  
      bExport = false;
    }
  } else
  {
    render( (frameCount % nbFrames) / float(nbFrames) );
  }
}

// ------------------------------------------
void keyPressed()
{
  if (key == ' ')
  {
    bExport = true;
    gifExport = null;
    iFrame = 0;
  }
}

// ------------------------------------------
// timestamp
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}

// ------------------------------------------
void render(float t)
{
  fill(255,255,0);
  strokeWeight(5);
  for ( float y=50; y<=450; y = y + 50)
  {
    for ( float x=50; x<=450; x = x + 50 )
    {
      pushMatrix();
      translate(x, y);
      rotate( radians(t*360.0) );
      rect(0,0, 200*cos(radians(360*t+x/4+y*2)) ,130*cos(radians(360*t+x/4+y*2)));
      popMatrix();
    }
  }
}