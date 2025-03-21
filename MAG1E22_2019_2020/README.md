MAG1E22 — 2019
===============================================

Ce cours (24h) aura pour but de se familiariser avec des enviromments de « creative coding » [p5.js](https://p5js.org/) et [arduino](https://www.arduino.cc/), et d'entrevoir les possibilités de réalisation / production d'outils dans le cadre de vos projets.

## Outils
* éditeur [sublime text](https://www.sublimetext.com/).
* navigateur [brave](https://brave.com/) ou [firefox](https://www.mozilla.org/fr/firefox/new/) recommandés pour travailler.
* téléchargement [sketch vide](s01_cours01/01-exemple-vide.zip) et renommer le dossier (pas les fichiers index.html et sketch.js)

## Cours #01 et #02 — jeudi 26 septembre et vendredi 27 septembre 2019 
* Présentation du studio [2Roqs](http://www.2roqs.fr) 
* anatomie d'une page web HTML / CSS / Javascript
* Introduction à [p5js](https://p5js.org/) (« Processing pour le web »)
  * [anatomie d'un projet p5js](https://p5js.org/get-started/)
  * (ré)visions des bases de programmation vues avec [Processing](https://processing.org/)
     * gestionnaires [setup()](https://p5js.org/reference/#/p5/setup) et [draw()](https://p5js.org/reference/#/p5/draw)
     * variables / fonctions / boucles / conditions
* Notions de [DOM](https://fr.wikipedia.org/wiki/Document_Object_Model) pour manipuler les éléments du HTML.
  * présentation des outils de développements :
    * Brave (Menu > Plus d'outils > outils de développements) / Firefox (Menu > développement web > outils de développement) 
    * inspection de la structure d'une page
    * console javascript
    * outils de développements pour mobile

### Références
* [Site p5.js](https://p5js.org/)
* [Éditeur p5.js en ligne](https://editor.p5js.org/)
* [Code! Programming for beginners with p5.js par Daniel Shiffman](https://www.youtube.com/watch?v=yPWkPOfnGsw)
* [Javascript basics sur le wiki de p5.js](https://github.com/processing/p5.js/wiki/JavaScript-basics)
* [Cours en ligne en français](http://www.lyceelecorbusier.eu/p5js/)
* [Debugging! p5.js](https://p5js.org/learn/debugging.html)
* [Designing programs par Mark Webster](https://designingprograms.bitbucket.io)
* [Computational Graphic Design Manual par Mark Webster](https://dpmanual.bitbucket.io)

## Cours #03 — vendredi 18 octobre 2019 

* Télécharger l'environnement Arduino (IDE) :point_right: https://www.arduino.cc/en/Main/Software
* Archive .zip (~109 Mo) à télécharger pour ce cours :point_right: http://master.designbordeaux.fr/cours/jgachadoat/download/2019_2020/MAG1E22_2019_2020_cours03.zip

* [Introduction à Arduino](
http://master.designbordeaux.fr/cours/jgachadoat/arduino/index.html)
  * [anatomie de la carte](http://master.designbordeaux.fr/cours/jgachadoat/arduino/index.html#arduino)
  * [structure d'un programme / sketch](http://master.designbordeaux.fr/cours/jgachadoat/arduino/index.html#sketch)
  * [méthode de travail](http://master.designbordeaux.fr/cours/jgachadoat/arduino/index.html#methode_travail)
  * premiers montages : 
    * [allumer une diode](http://master.designbordeaux.fr/cours/jgachadoat/arduino/index.html#allumer_diode) / sketch **arduino/_01_led_clignote**
    * [capter la luminosité](http://master.designbordeaux.fr/cours/jgachadoat/arduino/index.html#capter_lumiere) / sketch **arduino/_02_capteur_lumiere**
* **Arduino + p5js**
  * envoi de données depuis un sketch vers arduino (référence [serial output from p5.js](https://itp.nyu.edu/physcomp/labs/labs-serial-communication/lab-serial-output-from-p5-js/))
    * le sketch **_03_arduino_p5js_reception** permet d'envoyer des données depuis le sketch dans le navigateur vers Arduino.
    * le sketch **_04_arduino_p5js_envoi** permet d'envoyer des données depuis Arduino vers le navigateur.
 
 ### « Exercices » à réaliser en cours
  * Reprendre le sketch **arduino/_01_led_clignote** et ajouter une ou plusieurs leds, programmer une séquence animée avec la fonction [delay](https://www.arduino.cc/reference/en/language/functions/time/delay/) pour temporiser.
  * Reprendre le sketch **_04_arduino_p5js_envoi** en intégrant l'envoi de données depuis le capteur lumière (et non plus une valeur random)
 
 ### Références
 * [Projets créatifs avec Arduino](https://www.eyrolles.com/Informatique/Livre/projets-creatifs-avec-arduino-9782744026171/) / Bruno Affagard, Jean-Michel Géridan, Jean-Noël Lafargue
 * [Eniarof](http://www.eniarof.com/maintenance), la fête foraine revisitée.
 * [The untold story of Arduino](https://arduinohistory.github.io/)
 * [Projet Arduino x Master DITA](http://jonathanlalanne.fr/arduino/accueil.html) / Jonathan Lalanne 
 
 ## Cours #04 — lundi 2 décembre 2019 
Nous travaillerons à la création des motifs génératifs qui seront imprimés sur vos cartes de visite avec le traceur [axidraw](https://axidraw.com/).

L'idée sera d'inventer un système graphique qui fasse sens avec l'identité propre du master d'une part, et les centres d'intérêt relatifs au design de votre promotion d'autre part. Idéalement, cette identité pourrait aussi s'appliquer aux promotions suivantes avec des possibilités d'extension et de personnalisation.

Cette création reposera sur des données qui font sens et nous éviterons une production « gratuite », simplement esthétique.  
Nous utiliserons l'environnement [p5.js](https://p5js.org/) comme outil de production, avec les contraintes graphiques inhérentes au traceur, c'est à dire l'utilisation de lignes et de points comme briques de composition. 

### Sketches .zip
[s01_cours04.zip](s01_cours04.zip)

### Organisation du cours
* Présentation de projets d'identité générative.
* Présentation du traceur Axidraw.
* Révision des bases de p5.js
  * anatomie d'un sketch. 
  * interface graphique via [p5.dom.js](https://p5js.org/reference/#group-DOM)
  * exportation au format [SVG](https://fr.wikipedia.org/wiki/Scalable_Vector_Graphics) avec p5.svg.js
* Libre cours aux idées, propositions, réflexions. 

### Références
* [MIT Media Lab Identity 2011 / TheGreenEyl](https://vimeo.com/20250134) + [nouvelle idendité basée sur la même grille par Pentagram](https://www.underconsideration.com/brandnew/archives/new_logo_and_identity_for_mit_media_lab_by_pentagram.php)
* [EPFL Alumni generative identity](https://www.youtube.com/watch?v=Qbg9be9yXaQ)
* [Casa de musica / Sagmeister](https://vimeo.com/17353965)
* [COP15 Identity / OKDeluxe](http://www.okdeluxe.co.uk/cop15/)
* [Bordeaux Métropole / Ruedi Baur + Kubik](https://www.grapheine.com/actulogo/nouvelle-identite-visuelle-generative-bordeaux-metropole)

### Démo en ligne (prototype)
https://master.designbordeaux.fr/projets/2019-2020/cartes-visites/index.html

![Prototype](s01_cours04/images/191201_Master_DIIS_cartes_visites_early_proto.jpg)

### Liens
* [Flocking, agents « autonomes »](https://p5js.org/examples/simulate-flocking.html)
* [Contour maps](https://www.axismaps.com/blog/2018/04/contours-in-browser/)


