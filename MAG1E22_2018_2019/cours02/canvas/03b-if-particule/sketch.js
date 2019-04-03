var x = 250;
var y = 250;
var vx = 3;
var vy = 2.2;
var radius = 120;

function setup()
{
	createCanvas(500,500);
}

function draw()
{
	//vy = vy + 2;

	x = x + vx;
	y = y + vy;
	if (x+radius > 500)
	{
		vx = -vx;
		x = 500-radius;
	}
	if (x-radius < 0)
	{
		vx = -vx;
		x = radius;
	}
	if (y+radius > 500)
	{
		vy = -vy;
		y = 500-radius;
	}
	if (y-radius < 0)
	{
		vy = -vy;
		y = radius;
	}

	noFill();
	stroke(0,mouseX/5);
	ellipse(x,y,2*radius,2*radius);
//	ellipse(x,y, cos(radians(frameCount))*50 , cos(radians(frameCount))*50 );
}

function mousePressed()
{
	background(255);
	x = 250;
	y = 250;
	vx = random(-15,15);
	vy = random(-3,3);
	radius = random(50,100);



}


