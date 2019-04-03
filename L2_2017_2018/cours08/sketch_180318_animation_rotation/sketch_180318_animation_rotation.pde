int nb = 8;
PGraphics[] frames;
float angle=0;
float radius = 240;
boolean bStartExport = false, export = false;
boolean begin = false;

void setup()
{
  size(500,500);
  frames = new PGraphics[nb];
  for (int i=0; i<nb; i++)
  {
    frames[i] = createGraphics(width,height);

    frames[i].beginDraw();
    frames[i].background(255,0);
    frames[i].endDraw();
  }
  noCursor();
}

void draw()
{
  if (!begin) return;
  
  int i = (frameCount-1) % nb; 
  angle = radians(float(frameCount)/2.0);
  //radius = frameCount/5;
  radius = map( cos(5*angle),-1,1,100,210 );

  frames[i].beginDraw();
  frames[i].translate(width/2, height/2);
  frames[i].ellipse( radius*cos(angle),radius*sin(angle),30,30 );
  frames[i].endDraw();
  
  if (bStartExport && i==0)
  {
    export = true;    
    bStartExport = false;
  }
  if (export)
  {
    frames[i].save("export"+i+".png");
    if (i == nb-1) export = false;
  }

  background(127);
  image(frames[i],0,0);
}

void keyPressed()
{
  if (key == 'e')
  {
    bStartExport = true;
    export = false;
  }
  else if (key == ' ')
  {
    begin = true;
  }
}