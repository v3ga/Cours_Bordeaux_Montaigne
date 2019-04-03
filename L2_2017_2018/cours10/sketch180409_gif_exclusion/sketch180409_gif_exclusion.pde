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
  background(0);
  fill(255);
  noStroke();
  blendMode(EXCLUSION);
  for (float x=50 ; x <= 450 ; x = x+50)
  {
    float diametre = 200 * sin( radians( -t*360.0 + x ) );
     rect(x,250,diametre,diametre);
     ellipse(x,250,diametre,diametre);
    //line(x,250,x,250+diametre);
  }

}