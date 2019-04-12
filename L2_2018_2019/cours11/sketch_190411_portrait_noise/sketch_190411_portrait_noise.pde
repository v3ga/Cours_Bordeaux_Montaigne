// ------------------------------------------
PImage img;
float taille;
float factor = 3.0 ; // influe sur la déformation

// ------------------------------------------
void setup()
{
  size(630, 900);
  img = loadImage("pic.png");
  taille = float(width) / float(img.width);
}

// ------------------------------------------
void draw()
{
  background(255);
  stroke(0);
  noFill();
  translate( 0.5*(width-img.width*taille), 0.5*(height-img.height*taille) );
  for (int y = 0; y < img.height; y++) 
  {
    beginShape();
    for (int x = 0; x < img.width; x++) 
    {
      // Couleur du pixel
      color c = img.pixels[y*img.width+x];
      // Niveau de gris
      int greyscale =round(red(c)*0.222+green(c)*0.707+blue(c)*0.071);
      // modulo
      float m = map(greyscale, 0, 255, 0, taille/factor);
      // Position sur l'écran
      float xx = x * taille; 
      float yy = y * taille + 0.5*taille;
      // noise
      float n = 0.0;
      float step = taille / 5.0;
      for (int k=0;k<5;k++)
      {
        n = m * noise( (xx + k*step)*0.01, yy*0.01 );
        vertex(xx + k*step, yy + m  * map(n,0,1,-taille/2,taille/2)) ;
      }
    }
    endShape();
  }
}
