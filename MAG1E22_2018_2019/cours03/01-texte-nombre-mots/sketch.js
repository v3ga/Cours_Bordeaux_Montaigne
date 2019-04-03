var texteInput;
var btnCount;
var texte;
var mots;
var nombreMots = 0;

// ----------------------------------------------------
// Démarrage du sketch
function setup() 
{
	// Création de l'élément canvas dans l'arborescence HTML, taille 500 x 500 pixels
	createCanvas(250,250);
	// Récupération de l'élément DOM <textarea> dont l'id est "texte" -> stockage dans la variable texInput
	// select est une fonction de la librairie p5.dom.js
	texteInput = select("#texte");
	// Récuoération de l'élément DOM <button> dont l'id est "btn"
	btnCount = select("#btn");
	// On associe à ce bouton le gestionnaire btnClick quand l'utilisateur appuie dessus
	btnCount.mousePressed(btnClick);
}

// ----------------------------------------------------
// Dessin sur l'élément <canvas>
function draw() 
{
	background(200);
	// On dessine le nombre de mots sur le <canvas> avec la fonction text de p5.js
	fill(0); // en noir
	text(nombreMots + " mot(s)", 5,20);
}

// ----------------------------------------------------
function btnClick()
{
	// Récupére le texte de l'élément <textarea> représenté par la variable textInput : on le stocke dans la variable text
	texte = texteInput.value();
	// On analyse le texte avec la librairie RiTa et la fonction RiTa.concordance, notamment le nombre de mots.
	mots = RiTa.concordance(texte);
	// On imprime sur la console le résultat ( Chrome > plus d'outils > Outils de développements )
	// mots est une variable js qui est liée à un objet javascript
	console.log(mots);
	// On compte combien de mots *différents* ont été analysés par la librairie Rita
	// On stocke cette valeur dans la variable nombreMots
	nombreMots = Object.keys(mots).length;
}