var texteInput;
var btnCount;
var texte;
var mots;
var motsTableau;
var nombreMots = 0;
var bSupprimePonctuation = false;
var indexMotAffiche = 0;
var motAffiche = "";


// ----------------------------------------------------
// Démarrage du sketch
function setup() 
{
	// Création de l'élément canvas dans l'arborescence HTML, taille 500 x 500 pixels
	createCanvas(500,500);
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
	if (nombreMots==0) return;
	
	var wBar = width / nombreMots;
	var hBar = 0;
	var x = 0;
	noStroke();
	fill(0);
	for (var i=0 ; i<nombreMots; i++)
	{
		hBar = occurence( motsTableau[i] ) *30;

		// Teste si la souris est sur le rectangle
		if (mouseX >= x && mouseX <= (x+wBar))
		{
			fill(0);
			text( motsTableau[i] + " / "+occurence( motsTableau[i] ) +" occurence(s)",5,20 );
			fill(255,0,0);
		}
		else
		{
			fill(0);
		}

		rect( x, height-hBar, wBar-1,hBar );

		x = x+wBar;
	}
}

// ----------------------------------------------------
function mousePressed()
{
	if (nombreMots > 0)
	{
		indexMotAffiche++;
		motAffiche = motsTableau[indexMotAffiche];
	}
}

// ----------------------------------------------------
function occurence(m)
{
	return mots[m];	
}

// ----------------------------------------------------
function btnClick()
{
	// Récupére le texte de l'élément <textarea> représenté par la variable textInput : on le stocke dans la variable text
	texte = texteInput.value();
	// On analyse le texte avec la librairie RiTa et la fonction RiTa.concordance, notamment le nombre de mots.
	// Si on décide de ne pas inclure la ponctuation, les mots de liaison, etc ...  
	if (bSupprimePonctuation)
	{
		mots = RiTa.concordance(texte);
	}
	else
	{
  		var params = 
  		{
    		ignoreStopWords: true,
    		ignoreCase: true,
    		ignorePunctuation: true
  		};		
  		mots = RiTa.concordance(texte, params);
	}
	// On imprime sur la console le résultat ( Chrome > plus d'outils > Outils de développements )
	// mots est une variable js qui est liée à un objet javascript
	console.log(mots);
	// On stocke les mots dans une variable motsTableau
	motsTableau = Object.keys(mots); 
	// On compte combien de mots *différents* ont été analysés par la librairie Rita
	// On stocke cette valeur dans la variable nombreMots
	nombreMots = motsTableau.length;
	// On remet à zéro l'index du mot que l'on affiche
	indexMotAffiche = 0
	motAffiche = motsTableau[indexMotAffiche];
}

