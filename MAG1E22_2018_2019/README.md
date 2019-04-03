MAG1E22
===============================================
## Outils
* éditeur [sublime text](https://www.sublimetext.com/).
* navigateur [chrome](https://www.google.com/chrome/) ou [firefox](https://www.mozilla.org/fr/firefox/new/) recommandés pour travailler.
* téléchargement [sketch vide](cours01/01-exemple-vide.zip) et renommer le dossier (pas les fichiers index.html et sketch.js)

## Serveur web en local
1. [Notice d'installation - 2ème option](https://github.com/processing/p5.js/wiki/Local-server) **serveur local** sur le wiki de p5.js.

2. Ouvrir le terminal
 - :point_right: Mac /  cmd + barre espace et taper « terminal »
 - :point_right: PC /  windows puis rechercher et taper « cmd »

3. Se déplacer dans le dossier de travail avec la commande **cd** (change directory). Vous pouvez taper **cd** puis **glisser déposer le dossier** dans le terminal, son chemin entier va s'inscrire. 
```
cd /Users/julien/Dev/Github/Cours_Bordeaux_Montaigne/MAG1E22_2018_2019
```

4. Démarrer le serveur avec la commande 
```
http-server -c-1
```

5. Copier-coller une des deux adresses dans votre navigateur pour accéder à l'arborescence de vos dossiers de sketchs. Ne fermez pas la fenêtre du terminal, sinon le serveur s'arrêtera.
```
http://127.0.0.1:8080
```


* [Blog Master 1](http://master.designbordeaux.fr/projets/ubm-bibliotheques) 

## Cours #01 — lundi 1er octobre 2018
* notions de HTML + CSS + Javascript
  * structure d'une page web (head + body)
  * mise en forme avec les [styles CSS](https://www.w3schools.com/html/html_css.asp)

### Références
* [Site p5.js](https://p5js.org/)
* [Éditeur p5.js en ligne](https://editor.p5js.org/)
* [Code! Programming for beginners with p5.js par Daniel Shiffman](https://www.youtube.com/watch?v=yPWkPOfnGsw)
* [Javascript basics sur le wiki de p5.js](https://github.com/processing/p5.js/wiki/JavaScript-basics)

## Cours #02 — lundi 22 octobre 2018
* Notions de [DOM](https://fr.wikipedia.org/wiki/Document_Object_Model) pour manipuler les éléments du HTML.
* Introduction à [p5js](https://p5js.org/) (« Processing pour le web »)
  * [anatomie d'un projet p5js](https://p5js.org/get-started/)
  * révisions des bases de programmation vues avec [Processing](https://processing.org/)
     * gestionnaires [setup()](https://p5js.org/reference/#/p5/setup) et [draw()](https://p5js.org/reference/#/p5/draw)
     * variables / fonctions / boucles / conditions
  * présentation des outils de développements :
    * Chrome (Menu > Plus d'outils > outils de développements) / Firefox (Menu > développement web > outils de développement) 
    * inspection de la structure d'une page
    * console javascript
    * outils de développements pour mobile
    
### Références
* [Cours en ligne en français](http://www.lyceelecorbusier.eu/p5js/)
* [Debugging! p5.js](https://p5js.org/learn/debugging.html)

## Cours #03 — lundi 26 novembre 2018
* Analyse de texte avec la librairie [RiTa](https://rednoise.org/rita/)
  * compter le nombre de mots d'un texte.
  * trouver le nombre d'occurence des mots d'un texte.
  * notions de [POS (part of speech)](http://rednoise.org/rita/tutorial/analyzing.php#Tokens), classement des mots d'un texte selon leur fonction grammaticale.
* Analyse d'un texte en utilisant un service externe : [Tone Analyser d'IBM](https://www.ibm.com/watson/services/tone-analyzer/)
  * extraire les « émotions » d'un texte.

### Références
* [Introduction to RitaJS](https://creative-coding.decontextualize.com/intro-to-ritajs/) / Allison Parish
* [The RiTa.js Library - Programming with Text](https://www.youtube.com/watch?list=PLRqwX-V7Uu6a-SQiI4RtIwuOrLJGnel0r&v=lIPEvh8HbGQ) / Daniel Shiffman
* [Programming from A to Z / Text Analysis](https://shiffman.net/a2z/text-analysis/) / Daniel Shiffman

## Cours #04 — lundi 10 décembre 2018
* Analyse d'images avec la libriairie [tracking.js](https://trackingjs.com/)
  * intégration de cette librairie avec p5.js
  * tracking de couleurs sur une image fixe et sur un flux de caméra.
  * définition de sa propre couleur de tracking, tolérance.
  * filtrer une image (blur) pour compenser le « bruit » et améliorer le groupement de pixels. 

### Références
* [Computer vision : color tracking](https://www.youtube.com/watch?v=nCVZHROb_dE)
* [Computer Vision for Artists and Designers: Pedagogic Tools and Techniques for Novice Programmers](http://www.flong.com/texts/essays/essay_cvad/)
* [YOLO - détection d'objets](https://pjreddie.com/darknet/yolo/)
* [YOLO + p5.js](https://ml5js.org/docs/yolo-webcam)
* [ml5js](https://ml5js.org/docs/getting-started) / outils de machine learning utilisés avec p5.js


MAG2E22
===============================================

## Cours #01 — lundi 4 février 2019
* formats de données : texte, CSV, XML, JSON
* chargement de données « statiques » au format CSV : [fichier CSV de la quantité de co2 émis depuis 1751](https://datahub.io/core/co2-fossil-global)
 * lecture des données, interaction canvas <-> dom via [p5.dom](https://p5js.org/reference/#/libraries/p5.dom)
 * dessin des données et interaction souris
* chargement de données dynamiques via l'API d'IQSpot.

### Références 
* [Documentation API IQSpot](https://app.iqspot.fr/login?returnUrl=%2Fassets%2Flib%2Fiq-app-web-api-doc%2Fapi.html)
* [Tableau de bord des bureaux](https://app.iqspot.fr)

## Cours #02 — lundi 18 février 2019
#### Message de Quentin Énard (directeur technique de iQSpot):<br /><br />
« Les données de confort sont disponibles! Il y a de la température, de l’humidité, du co2 et de la luminosité.<br />
Les urls sont **https://app.iqspot.fr/api/{datatype}/average/{location}**, avec **datatype** parmi : 
* temperature
* humidity
* co2
* illuminance

<br />

Les **locations** sont :
* a32-pilpse-et-maison-pour-la-science => Les moyenne pour tout le bâtiment
* a32-pilpse-et-maison-pour-la-science/bureau 005
* a32-pilpse-et-maison-pour-la-science/bureau 012
* a32-pilpse-et-maison-pour-la-science/bureau 110
* a32-pilpse-et-maison-pour-la-science/bureau 121
* a32-pilpse-et-maison-pour-la-science/salle 001
* a32-pilpse-et-maison-pour-la-science/salle 017 mélèze
* a32-pilpse-et-maison-pour-la-science/outdoor

<br />
Je crois que les bureaux n’ont que la température et l’humidité tandis que les salles ont également le co2 et la luminosité.
La zone outdoor est particulière, elle contient les données météo (température et humidité extérieures) récupérées à partir d’un service web météo.»

#### Matériel électronique à disposition
* [Fichier Excel](s2_cours02/190218_materiel_elec_master_DIIS.xlsx)

## Cours #03 — lundi 25 mars 2019
* Télécharger l'environnement Arduino (IDE) :point_right: https://www.arduino.cc/en/Main/Software
* Archive .zip (~160 Mo) à télécharger pour ce cours :point_right: http://master.designbordeaux.fr/cours/jgachadoat/download/2018_2019/s2_cours03.zip

* [Introduction à Arduino](
http://master.designbordeaux.fr/cours/jgachadoat/arduino/index.html)
  * [anatomie de la carte](http://master.designbordeaux.fr/cours/jgachadoat/arduino/index.html#arduino)
  * [structure d'un programme / sketch](http://master.designbordeaux.fr/cours/jgachadoat/arduino/index.html#sketch)
  * [méthode de travail](http://master.designbordeaux.fr/cours/jgachadoat/arduino/index.html#methode_travail)
  * premiers montages : 
    * [allumer une diode](http://master.designbordeaux.fr/cours/jgachadoat/arduino/index.html#allumer_diode) / sketch **arduino/_01_led_clignote**
    * [capter la luminosité](http://master.designbordeaux.fr/cours/jgachadoat/arduino/index.html#capter_lumiere) / sketch **arduino/_02_capteur_lumiere**
* **Arduino + p5js**
  * envoi de données depuis un sketch vers arduino (référence [serial output from p5.js](https://itp.nyu.edu/physcomp/labs/labs-serial-communication/lab-serial-output-from-p5-js/)) / sketch **arduino/_03_arduino_p5js_exemple** + **p5js/_03_arduino_p5js_exemple**

