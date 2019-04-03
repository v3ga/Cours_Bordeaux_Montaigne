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
	background(200,200,200);
	noStroke(0,0,0);
	fill(100,100,100)

	// Variable pour stocker le total de co2 extrait de la lecture de la variable data 
	var totalco2;
	// Variable qui va stocker la hauteur du rectangle à dessiner en fonction de totalco2
	var hauteurRectangle;

	// On parcourt toutes les années 
	for (var i=0; i<nbAnnees; i=i+1)
	{
		// Calcul des variables
		totalco2 = data.getNum(i, "Total");
		hauteurRectangle = totalco2/ 9167 * height; // 9167 est le maximum, on pourrait le caulculer automatiquement ! 

		// Dessin
		// x,y,largeur,hauteur
		rect(3*i,height - hauteurRectangle, 2,hauteurRectangle);
	}
	once = false;
}