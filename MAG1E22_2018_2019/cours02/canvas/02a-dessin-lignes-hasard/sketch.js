function setup()
{
	createCanvas(500,500);
	background(255);
  	noFill();
}

function draw()
{
  line(width/2,height/2,random(width),random(height));
}
