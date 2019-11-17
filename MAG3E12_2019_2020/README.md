
Introduction « Machine Learning »
===============================================

Ce cours sera consacré à une initiation aux techniques de « machine learning » grâce à la librairie [ml5.js](https://ml5js.org/). Ces techniques sont utilisées dans le domaine de l'intelligence artificielle pour donner la capacité à une machine programmable « d'apprendre » à partir d'un ensemble de données afin de réaliser des tâches automatiques de classification ou de prédiction par exemple.

Quelques exemples : 
* Détection de spams.
* Suggestion de vidéos, morceaux de musique sur les plateformes Youtube, Spotify, etc ... 
* Reconnaissance de visages.
* Reconnaissance vocale (Siri, Alexa par exemple)
* Imagerie médicale, détection de tumeurs pas exemple.
* Voiture autonome

L'objectif de ce cours sera de donner des clés de compréhension de ce type d'algorithmes à travers la réalisation d'un mini-prototype utilisant la classification d'images.

## Lundi 18 novembre
Ce cours est presque une transcription directe des vidéos en ligne de Daniel Shiffman sur le sujet. Je vous invite à consulter ces vidéos en ligne pour revoir les notions que nous allons voir aujourd'hui.

* Révisions p5.js
  * lancer un serveur local ( :point_right: [instructions](https://github.com/v3ga/Cours_Bordeaux_Montaigne/tree/master/MAG1E22_2018_2019#serveur-web-en-local)   )  
  * [structure d'un programme](https://p5js.org/reference/#/p5/setup) p5.js avec gestionnaire de démarrage et boucle de dessin.
  * chargement et affichage d'une image.
  * [affichage d'un flux vidéo webcam](https://p5js.org/examples/dom-video-capture.html).
* vue d'ensemble de la librairie [ml5.js](https://ml5js.org/)
  * [classification](https://learn.ml5js.org/docs/#/reference/image-classifier?id=description) d'une image simple en utilisant le modèle pre-entrainé « MobileNet ». Que veut dire modèle pré-entrainé ? 
  * application à un flux vidéo, classification en temps réel.
  * Le modèle n'est entrainé pour détecter que certains types d'objets (classes), comment faire pour l'entrainer à reconnaitre nos propres types d'images ? :point_right: Utilisation du « transfer learning » via le composant (« Feature Extractor »)[https://learn.ml5js.org/docs/#/reference/feature-extractor] de ml5.js

### Références
* [Daniel Shiffman / Image Classification with MobileNet](https://www.youtube.com/watch?v=yNkAuWz5lnY)
* [Daniel Shiffman / Webcam Image Classification](https://www.youtube.com/watch?v=D9BoBSkLvFo)
* [Daniel Shiffman / Transfer learning with Feature Extractor](https://www.youtube.com/watch?v=kRpZ5OqUY6Y)

## Jeudi 12 décembre

## Vendredi 13 décembre


## Outils & liens
* [ml5.js // Friendly Machine Learning for the web](https://ml5js.org/)
* [teachable machine](https://teachablemachine.withgoogle.com/)
* [teachable machine + p5.js](https://github.com/yining1023/teachable-machine-p5)
* [ml4a - Machine Learning 4 Artists](https://ml4a.github.io/)

