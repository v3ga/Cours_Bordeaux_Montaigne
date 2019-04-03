// ------------------------------------------
void render(float t)
{
  translate(width/2, height/2);
  noFill();
  
  rotate( t*TWO_PI );
  rotateY( t*TWO_PI );
  box(200);
  
/*  
  for (int s=300; s>0; s-=40)
  {
    pushMatrix();
    rotate( t*TWO_PI / 2 );
    rotateY( t*TWO_PI );
    box(s);
    popMatrix();
  }
*/
}