// --------------------------------------
// Variables
var login = "";
var pwd = ""; // remis en cours ;-)
locationId = "/villagebyca";


// data va stocker les données que l'on va charger dynamiquement par la fonction loadData_iQSpot
// Attention ! Ces données ne sont pas accessibles immédiatement dans notre programme car le 
// chargement « prend du temps »
var data; 

// --------------------------------------
function setup() 
{
	// Voir les différentes options ici
	// https://app.iqspot.fr/assets/lib/iq-app-web-api-doc/api.html
	loadData_iQSpot
    (
		"/electricity/average", 
		locationId, 
		{ "from" : "2019-01-01T00:00:00.000+01:00", "to" : "2019-02-03T00:00:00.000+01:00", "unit" : "kWh"  } // ces paramètres vont dépendre de la requête que nous faisons, il faut bien regarder ce que nécessite l'API
	);

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