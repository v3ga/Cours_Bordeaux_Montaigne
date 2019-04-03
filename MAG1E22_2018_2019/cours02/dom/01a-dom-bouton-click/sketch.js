// La page index.html vient d'être chargée
// La fonction setup de Processing est exécutée.
var bouton;

function setup() 
{
	bouton = select("#btn");	
	bouton.mousePressed(boutonClick);
}

function boutonClick()
{
	console.log("Bien ici!")
}
