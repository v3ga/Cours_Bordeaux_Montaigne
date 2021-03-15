LAG6U6 // 2020-2021
====================================

Nous continuerons d'explorer les potentialités de l'écosystème [p5.js](https://p5js.org/) au travers d'algorithmes graphiques (systèmes de particules, agents autonomes, automates cellulaires, ...) en mettant l'accent sur la production de visuels animés interactifs en temps réel et la création d'outils basés sur les technologies web.
L'objectif sera de proposer une installation numérique collective présentée à [la Fabrique Pola](https://pola.fr/) à la fin du semestre, les modalités et la scénographie seront à imaginer ensemble.

## Sketches en ligne
✍️ https://editor.p5js.org/v3ga/collections/re8BJbw3p

## Cours en ligne 
📼 [Cours #01 — Remise dans le bain — 18 janvier](https://youtu.be/N598oS3DThA)<br>
📼 [Cours #02 — Champ vectoriel (flow field) — 25 janvier](https://youtu.be/xFi238AjLlE)<br>
📼 [Cours #03 — Forces — 1er février](https://youtu.be/g5BRhRPa7P0)<br>
📼 [Cours #04 — Physique des solides — 8 février](https://www.youtube.com/watch?v=4rkqkz2UhIE)<br />
📼 [Cours #05 — Physique des solides : les contraintes — 1er mars](https://youtu.be/5TJXqVjHiIA)<br />
📼 [Cours #06 — Agents autonomes : les boids — 8 mars](https://youtu.be/R7M27mhFOiE)<br />
📼 Cours #07 — Typographie générative — 15 mars / oubli d'enregistrement 😰


## Cours #01 [en ligne] — Remise dans le bain — 18 janvier 
Visio. en ligne :point_right: https://youtu.be/N598oS3DThA

Ce premier va être une remise dans le bain des «briques» vues l'an passé. Nous avons aborder une brique importante de la programmation : la notion de classe. Nous allons travailler sur un système de particules (en reprenant notamment le modèle de bille dans ce sketch : https://editor.p5js.org/v3ga/sketches/JoO-Vi58) et nous reverrons notamment le stockage d'objets dans un tableau (sketch en ligne avec des particules : https://editor.p5js.org/v3ga/sketches/HbpmEVc_v)

### Références
* [Collections de sketches LAG4U6 2020](https://editor.p5js.org/v3ga/collections/7FvVaDMdC)

## Cours #02 [en ligne] — Champ vectoriel (flow field) — 25 janvier 
Visio. en ligne :point_right: https://youtu.be/xFi238AjLlE

Nous allons re-travailler la notion de classe vue la semaine passée. A cette occasion, nous allons re-utiliser la classe *bille* (renommée *particle*) dans deux contextes différents pour les animer : 
* particules plongées dans un *flow-field* (ou champs vectoriel), où à chaque point du canvas nous allons obtenir un vecteur (vx,vy) définissant la vitesse d'une particule. Ce champ pourra être statique ou évoluer dans le temps. Nous reverrons notamment la fonction de [Perlin noise](https://p5js.org/reference/#/p5/noise).
  * [excellent article](https://tylerxhobbs.com/essays/2020/flow-fields) de l'artiste [Tyler Hobbs](https://tylerxhobbs.com/) à ce sujet.
  * [article](https://genekogan.com/code/p5js-perlin-noise/) de Gene Kogan sur le Perlin noise dans p5.js
  <br>
  <a href="https://editor.p5js.org/v3ga/sketches/iAALqNdRh" target="_blank"><img width="200" src="210202_LAG6U6_cours02_flowfield.gif" /></a>
  <a href="https://editor.p5js.org/v3ga/sketches/iAALqNdRh" target="_blank"><img width="200" src="LAG6U6_cours02_particules_flowfields_time_gif.png" /></a>
  <a href="https://editor.p5js.org/v3ga/sketches/JTs6m4-Bu" target="_blank"><img width="200" src="210202_LAG6U6_cours02_flowfield_quantification.gif" /></a>
  <a href="https://editor.p5js.org/v3ga/sketches/JTs6m4-Bu" target="_blank"><img width="200" src="LAG6U6_cours02_particules_flowfields_time_quantification_gif.png" /></a>
  <a href="https://editor.p5js.org/v3ga/sketches/5_g0Kdclr" target="_blank"><img width="200" src="LAG6U6_cours02_particules_draw_flowfield.gif"></a>

## Cours #03 [en ligne] — Forces — 1er février
Visio. en ligne :point_right: https://youtu.be/g5BRhRPa7P0

Le cours s'articulera autour de deux notions : 
1. En complément du cours précédent, nous allons adjoindre à nos particules des propriétés de masse et d'accélération pour pouvoir leur appliquer des forces en utilisant [la deuxième loi de Newton](https://fr.wikipedia.org/wiki/Lois_du_mouvement_de_Newton#Deuxi%C3%A8me_loi_de_Newton_ou_principe_fondamental_de_la_dynamique_de_translation) :<br>*" l'accélération subie par un corps [...] est proportionnelle à la résultante des forces qu'il subit, et inversement proportionnelle à sa masse m."*
En particulier, nous allons appliquer à nos particules des forces d'attraction et de répulsion de manière dynamique, en fonction des interactions avec l'utilisateur par le biais de la souris.

<a title="After Godfrey Kneller
, Public domain, via Wikimedia Commons" href="https://commons.wikimedia.org/wiki/File:GodfreyKneller-IsaacNewton-1689.jpg"><img height="300" alt="GodfreyKneller-IsaacNewton-1689" src="https://upload.wikimedia.org/wikipedia/commons/3/39/GodfreyKneller-IsaacNewton-1689.jpg"></a><img height="300" src="https://upload.wikimedia.org/wikipedia/commons/5/5d/Newtons_laws_in_latin.jpg"><a href="https://editor.p5js.org/v3ga/sketches/rlFXZoYtQ"><img src="210202_LAG6U6_cours03_forces_repulsion.gif" height="300" /></a>


2. En fin de cours sera faite une introduction à la librairie [matter.js](https://brm.io/matter-js/) et notamment comment rendre "consistantes" nos particules, c'est à dire leur donner des propriétés d'objets physiques en interaction les unes avec les autres, à travers la gestion des collisions. 

  <br>
  <a href="https://editor.p5js.org/v3ga/sketches/rS-3CG-V1" target="_blank"><img width="200" src="210202_LAG6U6_cours03_matter_js.gif" /></a>
  <a href="https://editor.p5js.org/v3ga/sketches/W68AUpSSp" target="_blank"><img width="200" src="210202_LAG6U6_cours03_matter_js_lettres.gif" /></a>
  

## Cours #04 [en ligne] — Physique des solides — 8 février
Visio. en ligne :point_right: https://www.youtube.com/watch?v=4rkqkz2UhIE

Dans ce cours, nous allons continuer d'explorer la librairie [matter.js](https://brm.io/matter-js/) avec la création d'objets physiques et nous allons combiner leur création avec deux librairies : 

1. [p5.speech](https://idmnyu.github.io/p5.js-speech/) qui permet de faire de la reconnaissance vocale. L'idée sera d'analyser les mots prononcés pour les "transformer" en objets physiques dans notre scène.
2. [ml5.js / facemesh](https://learn.ml5js.org/#/reference/facemesh) qui va nous permettre de détecter les contours d'un visage à partir d'une image de la camera. Nous utiliserons cet algorithme pour émettre des particules depuis certains points du visage détecté.

Nous exploiterons aussi la création d'objets statiques (obstacles).
Pour faciliter l'inclusion des fonctions "helpers" liées à *matter.js*, j'ai placé un fichier en ligne. L'avantage est qu'un changement sur ce fichier se répercute sur l'ensemble des sketches qui utilisent ce fichier.

```html
<script src="https://licence.designbordeaux.fr/LAG6U6/p5_matter_helpers.js"></script>
<script src="https://licence.designbordeaux.fr/LAG6U6/p5_facemesh_helpers.js"></script>
```

<a href="https://editor.p5js.org/v3ga/sketches/h5dVO0-40" target="_blank"><img height="300" src="210208_LAG6U6_cours04_matter_js_obstacles.gif" /><a href="https://editor.p5js.org/v3ga/sketches/n4IgLuWt4" target="_blank"><img height="300" src="210208_LAG6U6_cours04_matter_js_facemesh_01.gif" /></a>

#### Références artistiques
* [Josh Nimoy / BallDroppings](https://experiments.withgoogle.com/balldroppings)
* [Zach Lieberman & Golan Levin / Manual Input Sessions](https://vimeo.com/22518283)
* [Zach Lieberman & Golan Levin / Messa Di Voce](https://www.youtube.com/watch?v=STRMcmj-gHc)

### Liens exemples matter.js
* https://github.com/b-g/p5-matter-examples : exemples des multiples possibilités de p5.js + matter.js


## Cours #05 [en ligne] — Physique des solides : les contraintes — 1er mars
Visio. en ligne :point_right: https://youtu.be/5TJXqVjHiIA <br>
[Template de code sur editor.p5.js](https://editor.p5js.org/v3ga/sketches/uKridiICw)<br>

* création d'une contrainte permettant de saisir les objets.
* création d'une contrainte ponctuelle sur un objets, les permettant de tourner autour d'un axe.
* création d'une contrainte à distance : cas classique (simple « fil ») et attracteur.
* modification de la gravité avec la fonction *setGravity()* 
  * A cette occasion nous reverrons la création de controles (slider) dans p5.js

## Cours #06 [en ligne] — Agents autonomes : les boids — 8 mars
Visio. en ligne :point_right: https://youtu.be/R7M27mhFOiE

* Etudes des agents automes de type [« boids »](https://fr.wikipedia.org/wiki/Boids)
  * comportement *seek* et *arrive*.
  * comportement de groupe *separate*, *alignment*, *cohesion*.
* Gestion de l'historique de positions des boids.

<a href="https://editor.p5js.org/v3ga/sketches/zmvm3KCFI" target="_blank"><img width="300" src="LAG6U6_cours06_boids_01.gif" /></a>
<a href="https://editor.p5js.org/v3ga/sketches/zmvm3KCFI" target="_blank"><img width="300" src="LAG6U6_cours06_boids_history_02.gif" /></a>

## Cours #07 [en ligne] — Typographie générative — 15 mars
Visio. en ligne :point_right: *à venir*

Pour ce TD, nous allons utiliser uen fonctionnalité de « segmentation » de glyphes d'une fonte donnée (par le biais de la fonction [textToPoints](https://p5js.org/reference/#/p5.Font/textToPoints)).
* Dans un premier temps, nous allons explorer les possibilités graphiques liées au dessin d'un motif pour chaque point d'un glyphe. 
* Ensuite, nous reprendrons notre classe de particules (et peut-être de boids) pour générer de nouveaux glyphes. J'ai pour cette occasion remanier [la classe particule](https://licence.designbordeaux.fr/LAG6U6/p5_particle.js) vue dans les précédents TDs, en la déportant en ligne et en lui adjoignant des méthodes pour la gestion des attracteurs / repousseurs.<br />Cela simplifie grandement l'écritude du code pour l'application de forces notamment. Les particules ont la possibilité de freiner, par application d'une force dont la direction est opposée au vecteur vitesse.

Voici les nouvelles fonctionnalités sur la classe **particle** : 
```js
function brake(intensity);
function isInsideCircle(cx,cy,radius);
function repelledBy(x,y,intensity,?dmin);
function attractedTo(x,y,intensity,?dmin);
function brake(intensity);
````

<a href="https://editor.p5js.org/v3ga/sketches/KKoMLDY0x" target="_blank"><img src="LAG6U6_cours07_typo_particules.gif" height="300" /></a><a href="https://editor.p5js.org/v3ga/sketches/L4USngjkb" target="_blank"><img src="LAG6U6_cours07_typo_particules_02.gif" height="300" /></a><br />
<a href="https://editor.p5js.org/v3ga/sketches/KKoMLDY0x" target="_blank"><img src="LAG6U6_2021_cours07_typo.png" height="300" /></a>

#### Template 
:point_right: https://editor.p5js.org/v3ga/sketches/qvSQLAi5p

#### Références
* [Julien Gachadoat / Lettres programmées](https://github.com/v3ga/Workshop_ECV_Bordeaux_Lettres_prog)
