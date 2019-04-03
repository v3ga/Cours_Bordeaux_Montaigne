var pas = 25;
var r=0;

function setup()
{
	createCanvas(500,500);
	noLoop();
}

function draw()
{
	background(255);
	
	for (var y=0 ; y<=500 ; y=y+pas)
	{
		for ( var x=0 ; x<=500; x=x+pas )
		{
			r = random(4);
			if (r<1)
			{
				line(x,y,x+pas,y+pas);
			}
			else if (r<2)
			{
				line(x+pas,y,x,y+pas);
			}
			else if (r < 3)
			{
				line(x+pas/2,y, x+pas/2,y+pas);
			}
			else
			{
				line(x,y+pas/2, x+pas,y+pas/2);
			}
		}
	}
}

