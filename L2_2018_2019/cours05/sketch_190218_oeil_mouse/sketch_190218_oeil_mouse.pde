float angle = 0;
float R = 30;      
float xEye = 150; // position en x de l'oeil
float yEye = 250; // position en y de l'oeil

// Pour en mettre un deuxième 
float angle2 = 0;
float R2 = 30;
// float xEye2 = ...
// float yEye2 = ...


void setup()
{
   size(600,500);
}

void draw()
{
  background(0);

  // Premier oeil (xEye, yEye, R, angle)
  fill(200);
  ellipse(xEye,yEye,110,110);
  
  fill(20);
  noStroke();
  angle = atan2(mouseY-xEye, mouseX-yEye);
  ellipse( xEye+R*cos(angle),yEye+R*sin(angle),50,50 );

  // Deuième oeil ici (xEye, yEye, R, angle)
  // ...
  
}