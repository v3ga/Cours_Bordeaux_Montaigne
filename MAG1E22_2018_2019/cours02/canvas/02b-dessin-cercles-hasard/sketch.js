var diametre = 0;

function setup()
{
	createCanvas(500,500);
	background(255);
  	noFill();
}

function draw()
{	
  diametre = random(10,100);
  stroke(0,50);
  ellipse(random(width),random(height),diametre,diametre);
}
