
// taille d'une cellule de la grille
var pas = 0;
// Variable qui va stocker le nombre aléatoire pour le choix du dessin du motif dans la boucle
var rnd = 0;

function setup() 
{
  createCanvas(windowWidth, windowHeight);
  drawGrid2();
}

function draw() 
{
}

function windowResized() 
{
  	resizeCanvas(windowWidth, windowHeight);
	drawGrid2();
}

function drawGrid()
{
 	background(200);

  	pas = width / 30.0;

	for (var y=0; y<=height-pas ; y = y + pas)
  	{
    	// Dessin d'une ligne de motifs
    	for (var x=0; x<=width-pas ; x = x + pas)
    	{
      		// Choix du nombre au hasard
			rnd = int(random(4));
      
	      // Si le nombre vaut 0
    	  if (rnd == 0)
      	{
        	line(x,y,x+pas,y+pas);
      	}
      	else if (rnd == 1)
      	{
        	line(x+pas,y,x,y+pas);
      	}
      	else if (rnd == 2)
      	{
        	line(x+pas/2,y,x+pas/2,y+pas);
      	}
      	else if (rnd == 3)
      	{
        	line(x,y+pas/2,x+pas,y+pas/2);
      	}
    	}
  	}
}

function drawGrid2()
{
 	background(200);
  	fill(255);
  	noStroke();
  	pas = width / 30.0;

	for (var y=0; y<=height-pas ; y = y + pas)
  	{

    	// Dessin d'une ligne de motifs
    	for (var x=0; x<=width-pas ; x = x + pas)
    	{
      		// Choix du nombre au hasard
			rnd = int(random(5));

// Si le nombre vaut 0
      if (rnd == 0)
      {
          arc(x,y,2*pas,2*pas,0,HALF_PI);
      }
      else if (rnd == 1)
      {
          arc(x,y+pas,2*pas,2*pas,-HALF_PI,0);
      }
      else if (rnd == 2)
      {
          arc(x+pas,y+pas,2*pas,2*pas,PI,PI+HALF_PI);
      }
      else if (rnd == 3)
      {
          arc(x+pas,y,2*pas,2*pas,HALF_PI, PI);
      }
      else if (rnd >= 4)
      {
        // Rien :-)
      }


		}
	}

}