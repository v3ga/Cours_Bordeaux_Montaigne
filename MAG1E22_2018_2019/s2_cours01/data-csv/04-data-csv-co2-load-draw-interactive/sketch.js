// --------------------------------------
// Variables
var data;
var nbAnnees;

// Variable associée à l'élément dont l'identifiant est infos dans le fichier html
var pInfos;

// --------------------------------------
function preload()
{
	// https://p5js.org/reference/#/p5/loadTable
	// data devient un tableau qui contient toutes les données
	data = loadTable("data/co2-1751-2010.csv", "csv", "header");
}

// --------------------------------------
function setup() 
{
	// On «sélectionne» le paragraphe infos
	pInfos = select("#infos");

	// Le nombre d'années est égal au nombre de lignes
	nbAnnees = data.getRowCount();

	// Bloc de dessin (« canvas ») dans la page
	createCanvas(nbAnnees*3,500);
}

// --------------------------------------
function draw() 
{
	// Couleur de fond
	background(200,200,200);
	noStroke();

	// Variable pour stocker le total de co2 extrait de la lecture de la variable data 
	var totalco2;
	// Variable qui va stocker la hauteur du rectangle à dessiner en fonction de totalco2
	var hauteurRectangle;

	// On parcourt toutes les années 
	for (var i=0; i<nbAnnees; i=i+1)
	{
		// Calcul des variables
		totalco2 = data.getNum(i, "Total");
		hauteurRectangle = totalco2/ 9167 * height;

		// Si la souris est dans l'une des barres 
		if (mouseX >= 3*i && mouseX <= 3*i+2 )
		{
			// on colore en noir
			fill(0,0,0);
			// On affiche l'info dans le paragraphe
			pInfos.html(i + " / " + totalco2 + " millions de tonnes de c02");
		}
		else
		{
			// sinon en gris 
			fill(100,100,100);
		}


		// Dessin
		// x,y,largeur,hauteur
		rect(3*i,height - hauteurRectangle, 2,hauteurRectangle);
	}
	once = false;
}


