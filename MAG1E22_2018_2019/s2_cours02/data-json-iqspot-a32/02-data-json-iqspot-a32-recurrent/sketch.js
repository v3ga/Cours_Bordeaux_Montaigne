// --------------------------------------
// 
// location + datatype à voir ici
// https://github.com/v3ga/Cours_Bordeaux_Montaigne/blob/master/MAG1E22_2018_2019/README.md#cours-02--lundi-18-f%C3%A9vrier-2019
// 


// Variables
// Votre login
var login = "";
// Votre mot de passe
var pwd = "";
// L'identifiant du lieu dont on veut récupérer les données
var locationId = "/a32-pilpse-et-maison-pour-la-science/bureau 012";
// Les données que l'on veut récupérerer 
var datatype = "/humidity";
// date de début
var dateDebut = "2019-02-08"; // installation des capteurs le 8 février 2019
// date de fin des données
var dateFin = "2019-02-17";
// « Scale » des données : résolution temporelle des données
// Les valeurs possibles sont : hour, day (valeur par défaut), week, month
var scale = "day";

// data va stocker les données que l'on va charger dynamiquement par la fonction loadData_iQSpot
// Attention ! Ces données ne sont pas accessibles immédiatement dans notre programme car le 
// chargement « prend du temps »
var data;

// --------------------------------------
function setup() 
{
    // On programme un timer qui va scruter les données toutes les heures

	// Voir les différentes options ici
	// https://app.iqspot.fr/assets/lib/iq-app-web-api-doc/api.html
	loadData_iQSpot
    (
		datatype, 
		locationId, 
		{ "scale" : scale, "from" : dateDebut+"T00:00:00.000+01:00", "to" : dateFin+"T00:00:00.000+01:00", "unit" : "ppm"  } // ces paramètres vont dépendre de la requête que nous faisons, il faut bien regarder ce que nécessite l'API
	);
}

// --------------------------------------
function draw() 
{
	// Si les données ont été réceptionnées ... 
	if (data)
	{

	}
}

// --------------------------------------
function loadData_iQSpot(what, locationId, parameters)
{
  let url = "https://app.iqspot.fr/api" + what + "/average"+locationId;
  console.log( url );
  $.ajax({
    method: "GET",
    url: url,
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