// La page index.html vient d'être chargée
// La fonction setup de Processing est exécutée.

var slider01;

function setup() 
{
	// On sauve dans la variable img01 la référence à l'image dont l'id est img01 dans le document HTML
	slider01 = select("#slider01");
}

function draw() 
{
	console.log( slider01.value() );
}
