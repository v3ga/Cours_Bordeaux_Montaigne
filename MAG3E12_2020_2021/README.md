
Introduction « Machine Learning »
===============================================

:point_right: **Dossier des sketches vus en cours** :point_left:<br /> 
[https://editor.p5js.org/v3ga/collections/EUTrREhis](https://editor.p5js.org/v3ga/collections/EUTrREhis) 

Ce cours sera consacré à une initiation aux techniques de « machine learning » grâce à la librairie [ml5.js](https://ml5js.org/) et [teachable machine](https://teachablemachine.withgoogle.com/)

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
  * [classification](https://learn.ml5js.org/docs/#/reference/image-classifier?id=description) d'une image simple en utilisant le modèle pre-entrainé « MobileNet ». Que veut dire modèle pré-entrainé ? 
  
  ```
  <script src="https://unpkg.com/ml5@0.4.3/dist/ml5.min.js"></script>
  ```
