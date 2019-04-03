PImage img;

void setup()
{
  img = loadImage("tricodeur.jpg");
  //size(img.width, img.height);
  size(458,358);
}

void draw()
{
  image(img,0,0);
/*  imageMode(CENTER);
  tint(200,200,0);
  image(img,mouseX,mouseY,100,70);
*/
}