
var lc;
var f = 1;

function setup() 
{
  createCanvas(windowWidth, windowHeight);
  background(200);
  lc = windowWidth / 5;
}

function draw() 
{
	background(200);
	f = mouseX / 20;
	noFill();
	stroke(0,50);
	for( var compteur2 = 0; compteur2 < 30; compteur2++ )
	{
		for( var compteur = 0 ; compteur < 5 ; compteur++ )
		{
	   		ellipse(lc/2 + compteur*lc, lc/2 + compteur2*lc, f*lc,f*lc);
		}
	}


/*
   ellipse(lc/2+0*lc,	lc/2,lc,lc);
   ellipse(lc/2+1*lc,	lc/2,lc,lc);
   ellipse(lc/2+2*lc,	lc/2,lc,lc);
   ellipse(lc/2+3*lc,	lc/2,lc,lc);
   ellipse(lc/2+4*lc,	lc/2,lc,lc);
*/
}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
  background(200);
}
