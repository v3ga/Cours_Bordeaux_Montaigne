// ----------------------------------------------
var cam;

// ----------------------------------------------
// Démarrage du sketch
function setup() 
{
	// Création de l'élément canvas, taille 500 x 500 pixels
	createCanvas(640,480);
	// Webcam
	cam = createCapture(VIDEO);
	cam.size(640,480);
	cam.hide()
}

// ----------------------------------------------
// Dessin sur l'élément <canvas>
function draw() 
{
	image(cam,0,0);
}