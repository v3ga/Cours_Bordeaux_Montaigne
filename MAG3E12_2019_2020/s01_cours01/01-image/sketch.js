// ----------------------------------------------
// Variable associée à l'image
var img;

// ----------------------------------------------
// Démarrage du sketch
function setup() 
{
	// Création de l'élément canvas, taille 640 x 480 pixels
	createCanvas(640,480);
	// Création de l'image
	img = createImg("images/cat.jpg");
	img.hide();
}

// ----------------------------------------------
// Dessin sur l'élément <canvas>
function draw() 
{
	image(img,0,0);
}