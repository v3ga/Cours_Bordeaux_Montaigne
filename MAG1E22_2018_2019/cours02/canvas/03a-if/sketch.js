function setup()
{
	createCanvas(500,500);
}

function draw()
{
	if ( mouseX < 250 )
	{
		background(255,0,0);
	}
	else if (mouseX < 400)
	{
		background(255,0,255);
	}
	else
	{
		background(0,0,255);
	}
}

