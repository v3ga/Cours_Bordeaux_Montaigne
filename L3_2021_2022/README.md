
LAG6U6 // 2021-2022
====================================

Nous continuerons d'explorer les potentialités de l'écosystème [p5.js](https://p5js.org/) au travers d'algorithmes graphiques (systèmes de particules, agents autonomes, automates cellulaires, ...) en mettant l'accent sur la production de visuels animés interactifs en temps réel et la création d'outils basés sur les technologies web.

## Sketches en ligne
✍️ https://editor.p5js.org/v3ga/collections/EkLsXqSBF

## Cours en ligne LAG6U6 2021
✍️ [Playlist Youtube](https://www.youtube.com/playlist?list=PLSQ5mjdHDgdBh9itCsCRzZcHSpnHldDu3)

## Cours #01 — Remise dans le bain — 17 janvier 
Ce premier va être une remise dans le bain en revoyant les notions fondamentales vues l'an passé. Nous avons aborder une brique importante de la programmation : la notion de classe.<br /> Nous allons travailler sur un système de particules en reprenant notamment le modèle de bille dans ce sketch : https://editor.p5js.org/v3ga/sketches/JoO-Vi58) et nous reverrons notamment le stockage d'objets dans un tableau (sketch en ligne avec des particules : https://editor.p5js.org/v3ga/sketches/HbpmEVc_v)

## Cours #02 — Champ vectoriel (flow field) — 24 janvier
Nous allons re-travailler la notion de classe vue la semaine passée. A cette occasion, nous allons re-utiliser la classe *bille* (renommée *particle*) dans deux contextes différents pour les animer : 
* particules plongées dans un *flow-field* (ou champs vectoriel), où à chaque point du canvas nous allons obtenir un vecteur (vx,vy) définissant la vitesse d'une particule. Ce champ pourra être statique ou évoluer dans le temps. Nous reverrons notamment la fonction de [Perlin noise](https://p5js.org/reference/#/p5/noise).
  * [excellent article](https://tylerxhobbs.com/essays/2020/flow-fields) de l'artiste [Tyler Hobbs](https://tylerxhobbs.com/) à ce sujet.
  * [article](https://genekogan.com/code/p5js-perlin-noise/) de Gene Kogan sur le Perlin noise dans p5.js
  <br>
  
## Cours #03 — 31 janvier
À rattraper.

## Cours #04 — Bruit et forces — 6 février
Le cours s'articulera autour de deux notions : 
1. [Bruit de perlin](https://en.wikipedia.org/wiki/Perlin_noise) ou « perlin noise » que nous avons utilisés dans notre système de particules. Je reviendrai un peu plus en détail sur cette fonction.
2. En complément du cours précédent, nous allons adjoindre à nos particules des propriétés de masse et d'accélération pour pouvoir leur appliquer des forces en utilisant [la deuxième loi de Newton](https://fr.wikipedia.org/wiki/Lois_du_mouvement_de_Newton#Deuxi%C3%A8me_loi_de_Newton_ou_principe_fondamental_de_la_dynamique_de_translation) :<br>*" l'accélération subie par un corps [...] est proportionnelle à la résultante des forces qu'il subit, et inversement proportionnelle à sa masse m."*
En particulier, nous allons appliquer à nos particules des forces d'attraction et de répulsion de manière dynamique, en fonction des interactions avec l'utilisateur par le biais de la souris.

<a title="After Godfrey Kneller
, Public domain, via Wikimedia Commons" href="https://commons.wikimedia.org/wiki/File:GodfreyKneller-IsaacNewton-1689.jpg"><img height="300" alt="GodfreyKneller-IsaacNewton-1689" src="https://upload.wikimedia.org/wikipedia/commons/3/39/GodfreyKneller-IsaacNewton-1689.jpg"></a><img height="300" src="https://upload.wikimedia.org/wikipedia/commons/5/5d/Newtons_laws_in_latin.jpg"><a href="https://editor.p5js.org/v3ga/sketches/rlFXZoYtQ">
 
 ### Templates
* [Template particules « vide »](https://editor.p5js.org/v3ga/sketches/eawS57yxV)<br />*On va partir de ce sketch pour implémenter la gestion des forces pour une particule.*
 
 ### Librairies 
* [p5_timer.js](https://licence.designbordeaux.fr/LAG6U6/p5_timer.js)
 
