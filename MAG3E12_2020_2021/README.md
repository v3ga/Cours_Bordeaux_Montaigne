
Introduction « Machine Learning »
===============================================

:point_right: **Dossier des sketches vus en cours** :point_left:<br /> 
[https://editor.p5js.org/v3ga/collections/EUTrREhis](https://editor.p5js.org/v3ga/collections/EUTrREhis) 

Ce cours sera consacré à une initiation aux techniques de « machine learning » grâce à la librairie [ml5.js](https://ml5js.org/) et au service en ligne [teachable machine](https://teachablemachine.withgoogle.com/)

Ces techniques sont utilisées dans le domaine de l'intelligence artificielle pour donner la capacité à une machine programmable « d'apprendre » à partir d'un ensemble de données afin de réaliser des tâches automatiques de classification ou de prédiction par exemple. Nous nous familiarisons avec les notions de réseaux de neurones, d'apprentissage supervisé, ... et d'autres termes que vous avez peut-être entendu ici ou là et qui paraissent obscurs.

Quelques exemples de services utilisant ces techniques : 
* Détection de spams.
* Suggestion de vidéos, morceaux de musique sur les plateformes Youtube, Spotify, etc ... 
* Reconnaissance de visages.
* Reconnaissance vocale (Siri, Alexa par exemple)
* Voiture autonome.

L'objectif de ce cours sera de donner des clés de compréhension de ce type d'algorithmes à travers la réalisation d'un mini-prototype utilisant la classification d'images.

## Lundi 16 novembre
La première session de ce cours sera consacrée à des révisions sur l'environnement p5.js et les principes de programmation, indispensables avant de se jeter dans le vif du sujet.

* Révisions p5.js
  * [structure d'un programme](https://p5js.org/reference/#/p5/setup) p5.js avec gestionnaire de démarrage et boucle de dessin.
  * chargement et affichage d'une image.
  * [affichage d'un flux vidéo webcam](https://p5js.org/examples/dom-video-capture.html).
* vue d'ensemble de la librairie [ml5.js](https://ml5js.org/)
  * [classification](https://learn.ml5js.org/docs/#/reference/image-classifier?id=description) d'une image simple en utilisant le modèle pre-entrainé « MobileNet ». 
  
#### Balise script ml5.js
Balise à intégrer dans le fichier index.html de votre projet.
```
<script src="https://unpkg.com/ml5@latest/dist/ml5.min.js"></script>
```

## Lundi 7 décembre

#### Visio.
:point_right: https://www.youtube.com/watch?v=BDIaKciQLu4 :point_left:

#### Plan de cours
* **Classification d'images** avec ml5.js
  * révision de la notion de tableau, notamment pour analyser les résultats retournés par le classificateur.
  * [liste des classes détectées](https://gist.github.com/genekogan/47e66f0221b50462b20fd2373528e734)
  * limite de ce modèle.
* **Posenet**
  * affichage des *keypoints*
  * affichages des *skeletons*
* Présentation de [Teachable Machine](https://teachablemachine.withgoogle.com/)
  * introduction aux réseaux de neurones.
  * création d'un projet sur teachable machine.
  * création de classes, entrainement.
  * exportation du modèle vers p5.js, intégration des classes. 
  * révision de la notion de branchement avec **if**

### Ressources
* [:point_right: Slides de présentation Neural Network](https://docs.google.com/presentation/d/e/2PACX-1vRHSkQlrWykzBV64YS4qLq_kVx_2Zc5_BfGBVdBGKDgywVaxuFC620qmfSlEvIvUdHFh37ii_y2JL4j/pub?start=false&loop=false&delayms=3000)
* [Julien Gachadoat / conférence IA et créativité à Stereolux (2017)](https://github.com/v3ga/Conference_Stereolux_IA_creativite)

## Vendredi 11 décembre
