// ----------------------------------------------
let font;

// ----------------------------------------------
var resx = 4; // nombre de cases sur l'axe des x
var resy = 4; // nombre de cases sur l'axe des y
var margin = 10; // espace en pixel autour des cases

var wCell, hCell; // largeur et hauteur d'une case
var wCV, hCV; // largeur et hauteur de la carte de visite à l'intérieur de la carte


// ----------------------------------------------
// Préchargement des médias
/*
function preload() 
{
	font = loadFont("data/Hind-Regular.ttf");
}
*/

// ----------------------------------------------
// Démarrage du sketch
function setup() 
{
	// Création de l'élément canvas, taille proportionnelle au format A3
	// createCanvas(420*3, 297*3);
	// Création de l'élément canvas, taille proportionnelle au format A4
	createCanvas(297*4, 210*4);
	textSize(10);
	textAlign(LEFT, BASELINE);
	if (font)
		textFont(font);

	wCell = width/resx;
	hCell = height/resy;
	wCV = wCell - 2*margin;
	hCV = hCell - 2*margin;
}

// ----------------------------------------------
// Dessin
function draw() 
{
	background(245);
	var xCell,yCell;
	for (var j=0;j<resy;j=j+1)
	{
		for (var i=0;i<resx;i=i+1)
		{
			xCell = i*wCell;
			yCell = j*hCell;
			push();
			translate(xCell+margin, yCell+margin);
			drawCell(i,j);
			drawInfo();
			pop();
		}
	}
}

// ----------------------------------------------
// Dessin d'une cellule
function drawCell(i,j)
{
	// Fond blanc
	fill(255);

	// Dessin des contours de la cellule
	stroke(0,50);
	rect(0,0,wCV,hCV);

	// Dessin d'un motif
	// Pas de remplissage, contour noir
	stroke(0);
	noFill();

	var nbFigures = 12;
	var nbTours = map(mouseX, 0, width, 1, 4);
	var rayonDepart = 10;
	var croissance = 15;
	var angleRotation = 0.07;
	var nbPoints = map(mouseY, 0, height, 3, 6);
	var radiusMin = 5, radiusMax = 70;
	for (var n=0; n<nbFigures; n++)
	{
	  push();
	  translate(wCV/2,hCV/2);
	  rotate( map(mouseX,0,width,0,Math.PI) + i*Math.PI/5 + j*Math.PI/3 );
	  rotate( map( sin(nbTours*n/nbFigures*2*Math.PI), -1, 1, -angleRotation, angleRotation) );
	  drawCircle(nbPoints, map(n,0,nbFigures-1,radiusMin,radiusMax) );
  
	  pop();
	}
}

// ----------------------------------------------
function drawInfo()
{
	push();
	fill(0);
	noStroke();
	text("Nom prénom", 10,15)
	text("+33 6 00 00 00 • voici@monadresse.com", 10,hCV-20)
	text("Master DIIS • Université de Bordeaux Montaigne", 10,hCV-5)
	pop();
}

// --------------------------------------------------
function drawCircle(nb, radius)
{
  beginShape();
  for (var i=0; i<nb; i++)
  {
    var angle = -Math.PI/2+float(i)*2*Math.PI/nb;
    vertex( radius*cos(angle), radius*sin(angle) );
  }
  endShape(CLOSE);
}
