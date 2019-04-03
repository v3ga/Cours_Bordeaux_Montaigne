var xb;
var yb;
var vxb;
var vyb;


function setup() 
{
  createCanvas(windowWidth, windowHeight);
  background(200);
  xb = windowWidth / 2; // centre sur x
  yb = windowHeight / 2; // centre sur y
  vxb = random(-10,10);
  vyb = random(-2,2);
}

function draw() 
{
  xb = xb + vxb;
  yb = yb + vyb;

  if ( xb >= windowWidth ) // test à droite 
  {
  	vxb = -vxb;
  }
  if ( xb <= 0) // test à gauche
  {
  	vxb = -vxb;
  }
  if (yb >= windowHeight) // test en bas
  {
  	vyb = -vyb;
  }
  if (yb <= 0) // test en haut
  {
  	vyb = -vyb;
  }

  noFill();
  stroke(0,20);
//  noStroke();
//  fill(0,2);
  ellipse(xb,yb,mouseX,mouseX);
//	line(windowWidth / 2, windowHeight / 2, xb,yb);
}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
  background(200);
}
