// ----------------------------------------------
// Variable associée au canvas
var canvas;
// Variable associée à l'image
var img;

// ----------------------------------------------
// Démarrage du sketch
function setup() 
{
	// Création de l'élément canvas, taille 640 x 480 pixels
	canvas = createCanvas(640,480);
	// Creation du gestionnaire de « drop » (déposer un fichier sur le canvas)
	// On passe à la fonction drop deux fonctions : 
	// - la première gotFile lorsque le fichier est disponible
	// - la seconde dropped lorsque l'action de déposer / drop a été effectuée 
	canvas.drop(gotFile, dropped);
	// Dessin du fond
	background(200);
}

// ----------------------------------------------
// Dessin sur l'élément <canvas>
function draw() 
{
}

// ----------------------------------------------
// Fonction appelée lorsque le fichier est déposé
function dropped()
{
	background(0);
}

// ----------------------------------------------
// Fonction appelée lorsque le fichier déposé est disponible
function gotFile(file)
{
	img = createImg(file.data);
	image(img,0,0);
	img.hide();
}