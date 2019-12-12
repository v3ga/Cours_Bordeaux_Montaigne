var img;
var classifier;

// ----------------------------------------------
// Démarrage du sketch
function setup() 
{
	createCanvas(640,480);
	console.log("OK ! ");
	console.log(ml5.version);
	img = createImg("images/dog.jpg", imageReady);
	classifier = ml5.imageClassifier("MobileNet", modelLoaded);
}

// ----------------------------------------------
// Dessin sur l'élément <canvas>
function draw() 
{
//	background(0);
//	drawText("Hello p5.js",0,height-30);
//	fill(mouseX,0,0); // r,g,b
//	ellipse(mouseX,mouseY,200,200);
//	drawText("Hello p5.js",100,480-30);
}

function imageReady()
{
	console.log("OK image chargée !");	
}

function modelLoaded()
{
	console.log("OK modèle chargé !!");
	classifier.classify(img, gotResults);
}

function gotResults(error, results)
{
	if (error)
	{
		console.log("ERREUR !!!!");		
	}
	else
	{
		console.log(results);
	}
}




