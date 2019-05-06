// Variables
// Votre login
var login = "julien.gachadoat@2roqs.com";
// Votre mot de passe
var pwd = "diis2019";
// L'identifiant du lieu dont on veut récupérer les données
var locationId = "/a32-pilpse-et-maison-pour-la-science";
// Les données que l'on veut récupérerer 
var datatype = "/electricity";
// date de début
var dateDebut_seuil = "2019-03-01"; // installation des capteurs le 8 février 2019
// date de fin des données
var jour = 16;
var dateFin_seuil = "2019-04-"+jour;
// 
var seuil_mois_precedent = 0;
var seuil_mois_precedent_par_jour = 0;
//
var consommation_en_cours_iqSpot = 0;
var consommation_en_cours_manuel = 0;
var consommation_en_cours = 0;
var consommation_en_cours_par_jour = 0;
var consommation_mois_precedent_meme_jour = 0;
//
var transposition_km_voiture = 0;
var transposition_temps_ampoule = 0;
var transposition_temps_chauffage = 0;
var transposition_depense = 0;


var bModeManuel = false;

// --------------------------------------
$(document).on("ready", function()
{
	// Arbres	
	$(".top").cycle({ timeout: 0, slides : ".arbre" });
	$(".top").cycle("stop");

	// Valeurs seuils
	loadData_iQSpot
	(
		datatype,
		locationId,		
		{ "scale" : "month", "from" : dateDebut_seuil+"T00:00:00.000+01:00", "to" : dateFin_seuil+"T00:00:00.000+01:00", "unit" : "kWh"  },
		function(d)
		{
			// Valeur seuil du mois précédent
			seuil_mois_precedent 					= d.values[1].value;
			seuil_mois_precedent_par_jour  			= seuil_mois_precedent / 31;
			consommation_mois_precedent_meme_jour 	= seuil_mois_precedent_par_jour * jour;

			// Consommation
			consommation_en_cours 					= d.values[0].value;
			consommation_en_cours_iqSpot			= consommation_en_cours;
			consommation_en_cours_manuel			= consommation_en_cours;

			calculeDonnees();
			majInterface();
		}
	)
});

// --------------------------------------
$(document).on("keydown", function(e)
{
	if (bModeManuel)
	{
		if (e.key == "ArrowUp")
		{
			e.preventDefault();
			consommation_en_cours += 10;
			calculeDonnees();
			majInterface();
		}
		else if (e.key == "ArrowDown")
		{
			e.preventDefault();
			consommation_en_cours -= 10;
			calculeDonnees();
			majInterface();
		}
		else if (e.key=="b")
		{
			changeState();
		}
	}
	else
	{
		if (e.key=="b")
		{
			changeState();
		}
	}

});

// --------------------------------------
function changeState()
{
	if (bModeManuel == false)
	{
		bModeManuel = true;

		consommation_en_cours_manuel 	= consommation_en_cours_iqSpot;
		consommation_en_cours 			= consommation_en_cours_manuel;
	}
	else
	{
		bModeManuel = false;
		consommation_en_cours 			= consommation_en_cours_iqSpot;
	}

	calculeDonnees();
	majInterface();
}

// --------------------------------------
function calculeDonnees()
{
	// console.log( consommation_en_cours );
	consommation_en_cours_par_jour 			= consommation_en_cours / jour;
	calculeTranspositions();
}

// --------------------------------------
function calculeTranspositions()
{
	transposition_km_voiture 		= consommation_en_cours_par_jour * 2;
	transposition_temps_ampoule 	= consommation_en_cours_par_jour * 7;
	transposition_temps_chauffage 	= consommation_en_cours_par_jour * 45;
	transposition_depense 			= consommation_en_cours_par_jour * 0.04;

	majInterface(); 
}

// --------------------------------------
function convertToDMS(v)
{
	var s = "";
	var nbDays = Math.floor( v / 24.0);
	if (nbDays>0)
		s += nbDays+"j";
	var nbHours = v % 24;
	if (parseInt(nbHours)>0)
		s += " "+nbHours.toFixed(0)+"h";

	return s;
}

// --------------------------------------
function majInterface()
{
	$("#consommation_en_cours").html(consommation_en_cours.toFixed(0)+" kWh")
	$("#consommation_mois_precedent_meme_jour").html("seuil limite : "+consommation_mois_precedent_meme_jour.toFixed(0)+" kWh")

	$("#mode_manuel").css("display" , bModeManuel ? "block" : "none");
	$("#transposition_km_voiture").html( transposition_km_voiture.toFixed(1)+" km" );
	$("#transposition_temps_ampoule").html( convertToDMS(transposition_temps_ampoule) );
	$("#transposition_temps_chauffage").html( transposition_temps_chauffage.toFixed(1) );
	$("#transposition_depense").html( transposition_depense.toFixed(1) + " €" );

	var ratio = consommation_en_cours / consommation_mois_precedent_meme_jour;

	if (ratio < 0.95)
	{
		$(".top").cycle(0);
	}
	else if (ratio <= 1.0)
	{
		$(".top").cycle(1);
	}
	else if (ratio <= 1.05)
	{
		$(".top").cycle(2);
	}
	else if (ratio <= 1.1)
	{
		$(".top").cycle(3);
	}
	else
	{
		$(".top").cycle(4);
	}}

// --------------------------------------
function loadData_iQSpot(what, locationId, parameters, cb)
{
  let url = "https://app.iqspot.fr/api" + what + "/average"+locationId;
  console.log( "request = " + url );
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
        if (cb)
        	cb(d);
    }
  });
}
