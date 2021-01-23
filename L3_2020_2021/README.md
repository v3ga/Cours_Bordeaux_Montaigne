L3 Design // Processing // 2020-2021
====================================

Nous continuerons d'explorer les potentialités de l'écosystème [p5.js](https://p5js.org/) au travers d'algorithmes graphiques (systèmes de particules, agents autonomes, automates cellulaires, ...) en mettant l'accent sur la production de visuels animés interactifs en temps réel et la création d'outils basés sur les technologies web.
L'objectif sera de proposer une installation numérique collective présentée à [la Fabrique Pola](https://pola.fr/) à la fin du semestre, les modalités et la scénographie seront à imaginer ensemble.

## Cours #01 [en ligne] — Remise dans le bain — 18 janvier 
Ce premier va être une remise dans le bain des «briques» vues l'an passé. Nous avons aborder une brique importante de la programmation : la notion de classe. Nous allons travailler sur un système de particules (en reprenant notamment le modèle de bille dans ce sketch : https://editor.p5js.org/v3ga/sketches/JoO-Vi58) et nous reverrons notamment le stockage d'objets dans un tableau (sketch en ligne avec des particules : https://editor.p5js.org/v3ga/sketches/HbpmEVc_v)

### Références
* [Collections de sketches LAG4U6 2020](https://editor.p5js.org/v3ga/collections/7FvVaDMdC)

## Cours #02 [en ligne] — Forces et champ vectoriel — 25 janvier 
Nous allons re-travailler la notion de classe vue la semaine passée. A cette occasion, nous allons re-utiliser la classe *bille* (renommée *particule*) dans deux contextes différents pour les animer : 
* particules plongées dans un *flow-field* (ou champs vectoriel), où à chaque point du canvas nous allons obtenir un vecteur (vx,vy) définissant la vitesse d'une particule. Ce champ pourra être statique ou évoluer dans le temps. Nous reverrons notamment la fonction de [Perlin noise](https://p5js.org/reference/#/p5/noise).
  * [excellent article](https://tylerxhobbs.com/essays/2020/flow-fields) de l'artiste [Tyler Hobbs](https://tylerxhobbs.com/) à ce sujet.
  * [article](https://genekogan.com/code/p5js-perlin-noise/) de Gene Kogan sur le Perlin noise dans p5.js
* particules subissant les effets d'attracteurs ou de répulseurs. Nous verrons comment appliquer une force à une particule, force qui va agir sur *l'accélération* de la particule en fonction de sa masse.  
