var nb = 0;
var x = new Array(nb);
var y = new Array(nb);
var vx = new Array(nb);
var vy = new Array(nb);


function keyPressed()
{
	if (key == "A")
	{
		print("hello !");
	}

}

function mousePressed()
{
	x[nb] = mouseX;
	y[nb] = mouseY;
	vx[nb] = random(-2,2);
	vy[nb] = random(-2,2);

	nb = nb+1;
}

function setup()
{
	createCanvas(500,500);
	background(200,200,200);

	for ( var i=0; i<nb; i=i+1 )
	{
		x[i] = 250;
		y[i] = 250;
		vx[i] = random(-2,2);
		vy[i] = random(-2,2);
	}


	print( x[2] );
}

function draw()
{
	background(200,200,200)
	noStroke();
	fill(0,40)
	for ( var i=0; i<nb; i=i+1 )
	{
		x[i] = x[i] + vx[i];
		y[i] = y[i] + vy[i];

		if (x[i]+25 >= 500)
		{
			vx[i] = -vx[i];	
		}

		if (x[i]-25 <= 0)
		{
			vx[i] = -vx[i];	
		}

		if (y[i]+25 >= 500)
		{
			vy[i] = -vy[i];	
		}

		if (y[i]-25 <= 0)
		{
			vy[i] = -vy[i];	
		}		



		ellipse( x[i], y[i], 50 );
	}

	/*
	ellipse( x[0], 25, 50 );
	ellipse( x[1], 25, 50 );
	ellipse( x[2], 25, 50 );
	ellipse( x[3], 25, 50 );
	ellipse( x[4], 25, 50 );
	*/
}
