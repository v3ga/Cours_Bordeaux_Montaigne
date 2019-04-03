// Varaible image
var img;

// Variable pour le gestionnaire de tracking / analyse d'image
var tracker;

// Variable qui va stocker les résultats retournés par le tracker
var results;

// Ce gestionnaire d'évènement est appelé avant le setup
// pour permettre notamment le chargement d'image
function preload() 
{
	img = loadImage("images/gilets_jaunes.png");
//	img = loadImage("images/psmove.jpg");
}

// Démarrage du sketch
function setup()
{
	// La taille du <canvas> est directement ajustée sur la taille de l'image
	// img.width et img.height sont respectivement la largeur et la hauteur en pixels
	createCanvas(img.width, img.height)

	// On dessine l'image
	image(img,0,0);

	// 1. Creation du tracker 
	// On lui demande de tracker les couleurs "yellow"
	tracker = new tracking.ColorTracker(['yellow']);

	// 2. Gestionnaire d'évènement du tracker
	// Que faire s'il détecte plusieurs zones avec les couleurs indiquées ? 
	// On sauve les résultats dans notre variable results pour les utiliser dans le gestionnaire draw()
	tracker.on('track', function(event) 
	{
		results = event.data;
		console.log(results[0]);
		console.log(results.length + " résultats trouvés.");
	});

	// 3. Ok on lance le tracking sur le canvas ! 
	tracking.track(document.getElementsByTagName("canvas")[0], tracker);
}

// Dessin sur l'élément <canvas>
function draw() 
{
	// Si on a des resultats
	if (results)
	{
		noFill();
		strokeWeight(2);
		stroke(0,0,255);
		for (var i=0; i<results.length; i++)
		{
			rect(results[i].x/pixelDensity(),results[i].y/pixelDensity(),results[i].width/pixelDensity(),results[i].height/pixelDensity());
		}
	}
}

