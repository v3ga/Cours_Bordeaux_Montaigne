function setup()
{
	createCanvas(500,500);
	background(255);
  	noFill();
}

function draw()
{	
	stroke(0,70);
	rect(width/2,height/2,random(-180,180),random(-180,180));
}
