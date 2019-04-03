// --------------------------------------
// Variables
var data;

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
	// Le fichier a été chargé dans le gestionnaire preload()
	// Les informations sont disponibles à travers l'objet data
	// Imprime des informations dans la console
	print(data.getRowCount() + " lignes dans le fichier");
  	print(data.getColumnCount() + " colonnes");	
}

// --------------------------------------
function draw() 
{
}