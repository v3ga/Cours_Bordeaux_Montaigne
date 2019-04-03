// Variable qui fait la liaison avec la camera
var cam;

// Variable pour le gestionnaire de tracking / analyse d'image
var tracker;

// Variable qui va stocker les résultats retournés par le tracker
var results;

// Démarrage du sketch
function setup()
{
	// Creation du canvas
	createCanvas(800, 600);

	// Connexion avec la webcam
	cam = createCapture(VIDEO);
  	cam.id("camera");
  	cam.style("opacity",0);

	// 0. on peut enregistrer les couleurs que le tracker va pister
	tracking.ColorTracker.registerColor('red', function(r, v, b) 
	{
		// Conditions sur les composantes r(ouge), v(ert) et b(leu)
		if (r > 70 && v < 40 && b < 100)
	    	return true;
	  	return false;
	});	

	// 1. Creation du tracker 
	// On lui demande de tracker les couleurs "yellow"
	tracker = new tracking.ColorTracker(['yellow','red']);

	// 2. Gestionnaire d'évènement du tracker
	// Que faire s'il détecte plusieurs zones avec les couleurs indiquées ? 
	// On sauve les résultats dans notre variable results pour les utiliser dans le gestionnaire draw()
	tracker.on('track', function(event) 
	{
		results = event.data;
	});

	// 3. Ok on lance le tracking sur la camera
	tracking.track("#camera", tracker);
}

// Dessin sur l'élément <canvas>
function draw() 
{
	image(cam, 0, 0);

	// Si on a des resultats
	if (results)
	{
		noFill();
		strokeWeight(2);
		stroke(0,0,255);
		for (var i=0; i<results.length; i++)
		{
			rect(results[i].x,results[i].y,results[i].width,results[i].height);
		}
	}
}

