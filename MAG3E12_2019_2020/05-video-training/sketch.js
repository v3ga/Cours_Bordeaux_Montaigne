// ----------------------------------------------
// Variable qui stocke le modèle 
var mobilenet;
var classifier;
// Caméra
var cam;
// Texte / Label de la détection
var label = "";

// ----------------------------------------------
// Démarrage du sketch
function setup() 
{
	// Imprime dans la console la version de ml5.js
	console.log("ml5 version : "+ml5.version)
	// Création de l'élément canvas, taille 500 x 500 pixels
	createCanvas(540,480);
	// Camera
	cam = createCapture(VIDEO);
	cam.size(640,480);
	cam.hide()
	// Création du modèle
	// Le deuxième paramètre est une fonction appelé lorsque le modèle est initialisé
	mobilenet = ml5.imageClassifier('MobileNet', modelLoaded);
	classifier = ml5.classification(cam, camReady);
	// Fond du canvas
	background(220);
}

// ----------------------------------------------
// Dessin sur l'élément <canvas>
function draw() 
{
	image(cam,0,0);
	drawText(label,0,height-20);
}

// ----------------------------------------------
function drawText(s,x,y)
{
	fill(0);
	rect(0,y-10,width,y+10);
	fill(255);
	text(s,x,y+10);
}

// ----------------------------------------------
function camReady()
{
	console.log("Camera prête !!");
}

// ----------------------------------------------
// Fonction appelée lorsque le modèle a été chargé
// (peut prendre quelques secondes)
function modelLoaded()
{
	console.log("Modèle chargé !!");
	classifier.classify(cam, gotResults)
}

// ----------------------------------------------
function gotResults(error, results)
{
	if (error)
	{
		console.error(error);
	}
	else
	{
		// On relance la détection !
		classifier.classify(cam, gotResults)
	}
}