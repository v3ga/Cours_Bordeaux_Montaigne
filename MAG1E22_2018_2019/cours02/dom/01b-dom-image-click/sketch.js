// La page index.html vient d'être chargée
// La fonction setup de Processing est exécutée.

var img01;

function setup() 
{
	// On sauve dans la variable img01 la référence à l'image dont l'id est img01 dans le document HTML
	img01 = select("#img01");
	// On associe la fonction image01Click quand l'utilisateur clique sur l'image
	img01.mousePressed( image01Click );
}

function image01Click()
{
	console.log("ici !");
}

function image02Click()
{
	console.log("là !");
}