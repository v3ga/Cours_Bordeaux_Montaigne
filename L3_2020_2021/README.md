LAG6U6 // 2020-2021
====================================

Nous continuerons d'explorer les potentialités de l'écosystème [p5.js](https://p5js.org/) au travers d'algorithmes graphiques (systèmes de particules, agents autonomes, automates cellulaires, ...) en mettant l'accent sur la production de visuels animés interactifs en temps réel et la création d'outils basés sur les technologies web.
L'objectif sera de proposer une installation numérique collective présentée à [la Fabrique Pola](https://pola.fr/) à la fin du semestre, les modalités et la scénographie seront à imaginer ensemble.

## Sketches en ligne
✍️ https://editor.p5js.org/v3ga/collections/re8BJbw3p

## Cours en ligne 
📼 [Cours #01 — Remise dans le bain — 18 janvier](https://youtu.be/N598oS3DThA)<br>
📼 [Cours #02 — Champ vectoriel (flow field) — 25 janvier](https://youtu.be/xFi238AjLlE)<br>
📼 [Cours #03 — Forces — 1 février](https://youtu.be/g5BRhRPa7P0)


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

## Cours #03 [en ligne] — Forces — 1er février
Visio. en ligne :point_right: https://youtu.be/g5BRhRPa7P0

Le cours s'articulera autour de deux notions : 
1. En complément du cours précédent, nous allons adjoindre à nos particules des propriétés de masse et d'accélération pour pouvoir leur appliquer des forces en utilisant [la deuxième loi de Newton](https://fr.wikipedia.org/wiki/Lois_du_mouvement_de_Newton#Deuxi%C3%A8me_loi_de_Newton_ou_principe_fondamental_de_la_dynamique_de_translation) :<br>*" l'accélération subie par un corps [...] est proportionnelle à la résultante des forces qu'il subit, et inversement proportionnelle à sa masse m."*
En particulier, nous allons appliquer à nos particules des forces d'attraction et de répulsion de manière dynamique, en fonction des interactions avec l'utilisateur par le biais de la souris.

<a title="After Godfrey Kneller
, Public domain, via Wikimedia Commons" href="https://commons.wikimedia.org/wiki/File:GodfreyKneller-IsaacNewton-1689.jpg"><img height="300" alt="GodfreyKneller-IsaacNewton-1689" src="https://upload.wikimedia.org/wikipedia/commons/3/39/GodfreyKneller-IsaacNewton-1689.jpg"></a><img height="300" src="https://upload.wikimedia.org/wikipedia/commons/5/5d/Newtons_laws_in_latin.jpg">


2. En fin de cours sera faite une introduction à la librairie [matter.js](https://brm.io/matter-js/) et notamment comment rendre "consistantes" nos particules, c'est à dire leur donner des propriétés d'objets physiques en interaction les unes avec les autres, à travers la gestion des collisions. 



