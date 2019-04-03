// --------------------------------------
// Variables
var data;
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

	// Le fichier a été chargé dans le gestionnaire preload()
	// Les informations sont disponibles à travers l'objet data
	// Imprime des informations dans le paragraphe «infos»
	pInfos.html("Le fichier comporte "+data.getRowCount()+" lignes et "+data.getColumnCount()+" colonnes.<br />");

	// Lecture d'une donnée dans la variable data ( qui contient les données chargées depuis le fichier )
	var totalco2 = data.get(100, "Total"); // ligne 0 (soit l'année 1751, colonne "Total")
	pInfos.html("La consommation totale en 1751 était de "+ totalco2 + " million(s) de tonnes de co2", true); // true car on ajoute du texte au paragraphe

	// Bloc de dessin (« canvas ») dans la page
	createCanvas(500,500);
}

// --------------------------------------
function draw() 
{
}