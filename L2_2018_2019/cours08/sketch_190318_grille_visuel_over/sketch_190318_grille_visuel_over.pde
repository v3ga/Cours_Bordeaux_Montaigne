int res = 5;
int[] motifs = new int[res*res];
float c = 0.0;
float x, y;

void setup()
{
  size(800, 800); // taille de la fenêtre en pixels
  for (int i=0; i<motifs.length; i++) 
    motifs[i] = int( random(0, 4) );
  c = float(width) / res;
}

void draw()
{
  background(255);
  for (int j=0; j<res; j++)
    for (int i=0; i<res; i++)
    {
      x = c*i;
      y = c*j;

      int motif = motifs[i+res*j];
      String instruction="";

      pushStyle();
      stroke(0, 60);
      strokeWeight(3);
      if (motif == 0)
      {
        line(x, y, x+c, y+c);
        instruction = "line(x-d/2,y-d/2,x+d/2,y+d/2)";
      }
      if (motif == 1)
      {
        line(x+c, y, x, y+c);
        instruction = "line(x+d/2,y-d/2,x-d/2,y+d/2)";
      }
      if (motif == 2)
      {
        line(x+c/2, y, x+c/2, y+c);
        instruction = "line(x,y-d/2,x,y+d/2)";
      }
      if (motif == 3)
      {
        line(x, y+c/2, x+c, y+c/2);
        instruction = "line(x,y-d/2,x,y+d/2)";
      }
      popStyle();

      if (isMouseOver(x, y))
      {
        // rectangle
        pushStyle();
        noFill();
        stroke(200, 0, 0);
        rect(x, y, c, c);      
        fill(0);
        textSize(25);
        textAlign(CENTER, TOP);
        text(motif, x+c/2, y);
        popStyle();

        // points
        float w = 10;
        pushStyle();
        rectMode(CENTER);
        noStroke();
        fill(200, 0, 0);
        textSize(15);
        rect(x, y, w, w); textAlign(LEFT,BOTTOM); text("(x-d/2, y-d/2)",x-w/2,y-w); 
        rect(x+c, y, w, w); textAlign(LEFT,BOTTOM); text("(x+d/2, y-d/2)",x+c-w/2,y-w); 
        rect(x+c, y+c, w, w); textAlign(LEFT,TOP); text("(x+d/2, y+d/2)",x+c-w/2,y+c+w);
        rect(x, y+c, w, w); textAlign(LEFT,TOP); text("(x-d/2, y+d/2)",x-w/2,y+c+w);
        rect(x+c/2, y+c/2, w, w); textAlign(CENTER,TOP); text("(x, y)",x+c/2,y+c/2+w);
        popStyle();


        // instruction
        pushStyle();
        fill(200, 0, 0);
        textSize(25);
        textAlign(LEFT, BASELINE);
        text(instruction, 5, height-10);
        popStyle();
      }
    }
}

boolean isMouseOver(float x, float y)
{
  return ( (mouseX >= x && mouseX <= x+c) && (mouseY >= y && mouseY <= y+c) );
}
