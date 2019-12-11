// ----------------------------------------------
// Variable associé au controle de type «slider»
var sliderDiametre;
// Variable qui représente le diamètre de l'ellipse (voir draw())
var diametre = 100;

var sliderCouleur;
var couleur = 0;
// ----------------------------------------------
// Démarrage du sketch
function setup() 
{
	// Création de l'élément canvas, taille proportionnelle au format A3
	// createCanvas(297*2,420*2);
	// Création de l'élément canvas, taille proportionnelle au format A4
  createCanvas(297*3, 210*3);
  // Création du slider avec comme paramètres min,max,valeur
  sliderDiametre = createSlider(0,400,diametre);
  // Position dans la page web
  sliderDiametre.position(width+10,10);
  // Largeur
  sliderDiametre.style("width", "200px");

  sliderCouleur = createSlider(0,255,couleur);
  sliderCouleur.position(width+10,35);
  sliderCouleur.style("width", "200px");

}

// ----------------------------------------------
// Dessin sur l'élément <canvas>
function draw() 
{
  background(200);
  diametre = sliderDiametre.value();
  couleur = sliderCouleur.value();
  fill(couleur);
  ellipse(width/2, height/2, diametre,diametre);
}