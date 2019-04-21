// Variables
// Votre login
var login = "maroussia.rochette@gmail.com";
// Votre mot de passe
var pwd = "DIISmaroussia2019";
// L'identifiant du lieu dont on veut récupérer les données
var locationId = "/a32-pilpse-et-maison-pour-la-science/bureau 110";
// Les données que l'on veut récupérerer 
var datatype = "/co2";
// date de début
var dateDebut = "2019-04-07"; // installation des capteurs le 8 février 2019
// date de fin des données
var dateFin = "2019-04-08";
// « Scale » des données : résolution temporelle des données
// Les valeurs possibles sont : hour, day (valeur par défaut), week, month
var scale = "day";
// Page IDs (voir la page html)
var page_computer_vision_id = "page-computer-vision";
var page_veille_id          = "page-veille";
var page_menu_id            = "page-menu";
var page_humidite_id        = "page-humidite";
var page_cO2_id             = "page-cO2";
var page_temperature_id     = "page-temperature";
var page_luminosite_id      = "page-luminosite";


var page_computer_vision;
var page_current_id = "";

// Association entre la classe de l'objet détecté et la page
var classe_page = [];

classe_page[0] = ""; // entrainement 0 -> page veille
classe_page[1] = page_veille_id; // entrainement 0 -> page veille
classe_page[2] = page_menu_id; // entrainement 1 -> page humidité
classe_page[3] = page_humidite_id; // entrainement 2 -> page humidité
classe_page[4] = page_cO2_id; // entrainement 3 -> page cO2
classe_page[5] = page_temperature_id; // entrainement 4 -> page temperature
classe_page[6] = page_luminosite_id; // entrainement 5 -> page luminsoite

// Seuil de confiance en % pour changer de page
var seuil_de_confiance = 80;

// Temps (en secondes) au bout duquel on revient automatiquement à la page de veille
var temps_retour_veille = 5;

// Temps (en secondes) passé sur une page
var temps_page = 0.0;

// Timing
var tnow = 0, tprev = 0, dt = 0;

// --------------------------------------
$(window).on("load", function()
{
  page_computer_vision = $("#"+page_computer_vision_id);
  changePage(page_computer_vision_id);

  tprev = tnow = performance.now();
  window.requestAnimationFrame(update);
});

// --------------------------------------
$(document).on("keydown", function(e)
{
  console.log(e.key);
  if (e.key == "c")
  {
    e.preventDefault();
    if (page_computer_vision.is(":visible"))
    {
      changePage(page_veille_id);
    }
    else
    {
      changePage(page_computer_vision_id);
    }
  }
  else if (e.key == "0")
  {
    changePage(page_veille_id);
  }
  else if (e.key == "1")
  {
    changePage(page_menu_id);
  }
  else if (e.key == "2")
  {
    changePage(page_humidite_id);
  }
  else if (e.key == "3")
  {
    changePage(page_cO2_id);
  }
  else if (e.key == "4")
  {
    changePage(page_temperature_id);
  }
  else if (e.key == "5")
  {
    changePage(page_luminosite_id);
  } 

});

// --------------------------------------
function objectDetected(i, confiance)
{
  if (i>0)
  {
    if (confiance >= seuil_de_confiance)
      console.log(i)

    if (page_current_id != page_computer_vision_id)
    {
      var page_id = classe_page[i];
      if (page_id && confiance >= seuil_de_confiance)
      {
         changePage(page_id);
      }
    }
  }
}


// --------------------------------------
function changePage(pageId)
{
  var bChangePage = false;

  if (page_current_id == "")
  {
        bChangePage = true;
  }
  else if (page_current_id == page_computer_vision_id)
  {
      if (pageId != page_computer_vision_id)
        bChangePage = true;
  }
  else
  {
    if (page_current_id != pageId)
        bChangePage = true;
  }

  if (bChangePage)
  {
        showPage(pageId);
        page_current_id = pageId;
        temps_page = 0.0;
  }
}

// --------------------------------------
function showPage(pageId)
{
  $(".page").addClass("hidden");
  $("#"+pageId).removeClass("hidden");
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

// --------------------------------------
function update()
{
  tnow = performance.now();
  dt = (tnow - tprev)/1000.0; // secondes
  tprev = tnow;
  if (page_current_id != page_computer_vision_id && page_current_id != page_veille_id)
  {
    temps_page += dt;
    if (temps_page >= temps_retour_veille)
    {
      changePage(page_veille_id);
    }
  }

  window.requestAnimationFrame(update);
}


  