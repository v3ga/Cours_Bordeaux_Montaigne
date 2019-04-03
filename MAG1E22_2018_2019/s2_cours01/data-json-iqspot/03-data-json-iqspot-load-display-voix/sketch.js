// --------------------------------------
// Variables
var login = "";
var pwd = ""; // remis en cours ;-)
locationId = "/villagebyca";

// data va stocker les données que l'on va charger dynamiquement par la fonction loadData_iQSpot
// Attention ! Ces données ne sont pas accessibles immédiatement dans notre programme car le 
// chargement « prend du temps »
var data; 

//  variable pour la reconnaissance vocale
var reconnaissance;

// --------------------------------------
function setup() 
{
    // Démarrage de la reconnaisance vocale
    reconnaissance = new p5.SpeechRec();
    // L'algorithme appelera la fonction onSpeech si elle détecte quelque chose
    // Voir tout en bas de la page pour l'implémentation de la fonction
    reconnaissance.onResult = onSpeech;
    // La reconnaissance donne des résultats au fur et à mesure (true) ou non (false)
    reconnaissance.continuous = true;
    // La reconnaissance donne des résultats au fur et à mesure, en continu (valeur true ou false)
    reconnaissance.interimResults = false;
    // Démarrage 
    reconnaissance.start();    

    // Création du canevas sur la page web
    createCanvas(600, 600);
}

// --------------------------------------
function draw() 
{
	// Si les données ont été réceptionnées ... 
	if (data)
	{
        // on récupère un élément du tableau (le premier = le plus récent)
        var v = parseInt(data.values[0].value);

        // on dessine le texte
        textSize(100); // taille du texte en pixels
        textAlign(CENTER, CENTER); // alignement sur le canvas
        text(v + " kWh",0,0,600,600);
	}
}

// --------------------------------------
function loadData_iQSpot(what, locationId, parameters)
{
  $.ajax({
    method: "GET",
    url: "https://app.iqspot.fr/api" + what + locationId,
    dataType: 'json',
    headers: 
    {
        "Authorization": "Basic " + btoa(login + ":" + pwd)
    },
    data: parameters,
    success: function(d) 
    {
        data = d;
        // Imprime les données sur la console
        console.log( data );
        // $("#txt").text(JSON.stringify(data));
    }
  });
}


// --------------------------------------
// Gestionnaire de résultats de la 
// reconnaissance vocale
function onSpeech()
{
    // On décide d'afficher le résultat (contenu dans la variable reconnaissance.resultString) 
    // dans le bloc dont l'identiant est speech dans la page index.html
    // Le tag <br /> veut dire qu'une fois que l'on a inscrit le résultat dans le paragraphe, on saute une ligne
    select("#speech").html(reconnaissance.resultString + " <br />",true);
}
