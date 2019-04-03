// Permet d'afficher (true) ou non (false) l'image de la camera
var __DEBUG__ = true;

// Variable qui fait la liaison avec la camera
var cam;

// Variable pour le gestionnaire de tracking / analyse d'image
var tracker;

// Variable qui va stocker les résultats retournés par le tracker
var results;

var camdiv = 2;

// État
var colorFound = false;

// Infos
var infos;

var bShowPageColor = false;

// Démarrage du sketch
function setup()
{
	// Creation du canvas
	var c = createCanvas(640/camdiv, 480/camdiv);
	c.parent('p5');

	// Connexion avec la webcam
	cam = createCapture(VIDEO);
	cam.size(640, 480);
  	cam.id("camera");
  	cam.style("opacity",0.0);

	// 0. on peut enregistrer les couleurs que le tracker va pister
	tracking.ColorTracker.registerColor('red', function(r, v, b) 
	{
		var tolerance = 20;
		// Conditions sur les composantes r(ouge), v(ert) et b(leu)
		if (isBetween(r,254,tolerance) && isBetween(v,27,tolerance) && isBetween(b,0,tolerance))
	    	return true;
	  	return false;
	});	

	tracking.ColorTracker.registerColor('blue', function(r, v, b) 
	{
		var tolerance = 20;
		// Conditions sur les composantes r(ouge), v(ert) et b(leu)
		if (isBetween(r,101,tolerance) && isBetween(v,149,tolerance) && isBetween(b,157,tolerance))
	    	return true;
	  	return false;
	});	


	tracking.ColorTracker.registerColor('orange', function(r, v, b) 
	{
		var tolerance = 20;
		// Conditions sur les composantes r(ouge), v(ert) et b(leu)
		if (isBetween(r,247,tolerance) && isBetween(v,214,tolerance) && isBetween(b,112,tolerance))
	    	return true;
	  	return false;
	});	

	// 1. Creation du tracker 
	// On lui demande de tracker les couleurs "yellow"
	tracker = new tracking.ColorTracker(['yellow', 'red', 'blue', 'orange']);

	// 2. Gestionnaire d'évènement du tracker
	// Que faire s'il détecte plusieurs zones avec les couleurs indiquées ? 
	// On sauve les résultats dans notre variable results pour les utiliser dans le gestionnaire draw()
	tracker.on('track', function(event) 
	{
		results = event.data;
		if (results && results.length>0)
		{
			if (!colorFound && !bShowPageColor)
			{
				colorFound = true;		
				onColorFound(event.color);
			}
		}
		else
		{
			colorFound = false;		
//			infos.html("");
		}
	});

	// 3. Ok on lance le tracking sur la camera
	tracking.track("#camera", tracker);

	$(".color").click(function(){
			$(this).fadeOut();
			bShowPageColor = false;
	})

//	infos = select("#infos");
}

// --------------------------------------
function isBetween(value,ref,tolerance)
{
	if (value >= (ref-tolerance) && value <= (ref+tolerance))
		return true;
	return false;
}

// --------------------------------------
function onColorFound()
{
	$(".color").addClass(".hidden");
	bShowPageColor = false;

	var color = results[0].color;
	if (color == "yellow")
	{
		$("#jaune").fadeIn();
		bShowPageColor = true;
	}
	else if (color == "red")
	{
		$("#rouge").fadeIn();
		bShowPageColor = true;
	}
	else if (color == "orange")
	{
		$("#orange").fadeIn();
		bShowPageColor = true;
	}
	else if (color == "blue")
	{
		$("#orange").fadeIn();
		bShowPageColor = true;
	}

	console.log("colour found ! " + results[0].color);
//	infos.html(results[0].color);
}

// Dessin sur l'élément <canvas>
function draw() 
{
	if (__DEBUG__)
	{
	image(cam, 0, 0, cam.width/camdiv, cam.height/camdiv);

	// Si on a des resultats
	if (results)
	{
		noFill();
		strokeWeight(2);
		stroke(0,0,255);
		for (var i=0; i<results.length; i++)
		{
			rect(results[i].x/camdiv,results[i].y/camdiv,results[i].width/camdiv,results[i].height/camdiv);
		}
	}
}
}

