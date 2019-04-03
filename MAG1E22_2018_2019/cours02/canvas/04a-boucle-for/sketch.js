var pas = 25;

var taille = 0;

function setup()
{
	createCanvas(500,500);
}

function draw()
{
	background(255);
	
	noFill();
	stroke(0,200);
	for (var y=0 ; y<=500 ; y=y+pas)
	{
		for ( var x=0 ; x<=500; x=x+pas )
		{
			taille = cos(radians(frameCount+2*x+3*y))*40;
//			ellipse(x,y,mouseX/2,mouseX/2);
//			rect(x,y, taille, 2*taille);
			ellipse(x,y,taille,taille);
		}
	}
/*
	for ( var x=0 ; x<=500; x=x+50 )
	{
		ellipse(x,300,50,50);
	}

	for ( var x=0 ; x<=500; x=x+50 )
	{
		ellipse(x,350,50,50);
	}	
*/
/*	
	ellipse(0,250,50,50);
	ellipse(50,250,50,50);
	ellipse(100,250,50,50);
	ellipse(150,250,50,50);
	ellipse(200,250,50,50);
	ellipse(250,250,50,50);
	ellipse(300,250,50,50);
	ellipse(350,250,50,50);
	ellipse(400,250,50,50);
	ellipse(450,250,50,50);
	ellipse(500,250,50,50);
	*/
}

