// ----------------------------------------------
// Variable qui stocke le modèle 
var classifier;
// Image à traiter
var img;

// ----------------------------------------------
// Démarrage du sketch
function setup() 
{
	// Imprime dans la console la version de ml5.js
	console.log("ml5 version : "+ml5.version)
	// Création de l'élément canvas, taille 500 x 500 pixels
	createCanvas(540,480);
	// Création du modèle
	// Le deuxième paramètre est une fonction appelé lorsque le modèle est initialisé
	classifier = ml5.imageClassifier('MobileNet', modelLoaded);	
	// Fond du canvas
	background(220);
}

// ----------------------------------------------
// Dessin sur l'élément <canvas>
function draw() 
{
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
// Fonction appelée lorsque le modèle a été chargé
// (peut prendre quelques secondes)
function modelLoaded()
{
	console.log("Modèle chargé !!");
	// Charge l'image
	// Cela peut prendre du temps, on passe une fonction imageReady à appeler lorsque cela est fait !
	img = createImg("images/cat.jpg", imageReady);
}

// ----------------------------------------------
function imageReady()
{
	// On affiche l'image
	image(img,0,0);
	img.hide();
	// On la fait passer à la moulinette avec la fonction classify
	classifier.classify(img, gotResults);
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
		console.log(results);	
		drawText(results[0].label,10,480-20);
	}
}