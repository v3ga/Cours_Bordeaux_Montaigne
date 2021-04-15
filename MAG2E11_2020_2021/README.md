Surveillance et contre-mesures du design
================================================

#### Document de référence
* [Google Doc](https://docs.google.com/document/d/1sZdynk2J14vQ2Veabx0UskW5bmHseESuBiYeAz8w5pY/edit?ts=60644e35)
* [Slides Machine Learning](https://docs.google.com/presentation/d/e/2PACX-1vRHSkQlrWykzBV64YS4qLq_kVx_2Zc5_BfGBVdBGKDgywVaxuFC620qmfSlEvIvUdHFh37ii_y2JL4j/pub?start=false&loop=false&delayms=3000&slide=id.ga796a4b50e_0_106)

#### Sketches en ligne
* https://editor.p5js.org/v3ga/collections/BECVQLPhX

### Objectifs
Ce cours sera consacré à une initiation aux techniques de « machine learning » grâce à la librairie [ml5.js](https://ml5js.org/) et au service en ligne [Teachable Machine](https://teachablemachine.withgoogle.com/). Ces deux « blocs » fonctionnent avec [p5js](https://p5js.org/) avec lequel nous avons travaillé au premier semestre.

Les techniques de « machine learning » sont utilisées dans le domaine de l'intelligence artificielle pour donner la capacité à une machine programmable « d'apprendre » à partir d'un ensemble de données, dans le but de réaliser des tâches automatiques de classification ou de prédiction par exemple. Nous nous familiarisons avec les notions de réseaux de neurones, d'apprentissage supervisé, ... et d'autres termes que vous avez peut-être entendu ici ou là et qui paraissent obscurs.

Quelques exemples de services utilisant ces techniques :

* Détection de spams.
* Suggestion de vidéos, morceaux de musique sur les plateformes Youtube, Spotify, etc ...
* Reconnaissance de visages.
* Reconnaissance vocale (Siri, Alexa par exemple)

L'objectif de ce cours sera de donner des clés de compréhension de ce type d'algorithmes dans le cadre de ce projet. Nous étudierons notamment : 
* Reconnaissance vocale avec [p5.speech](https://idmnyu.github.io/p5.js-speech/)
* Reconnaissance d'images (images fixes ou webcam) avec le réseau de neurones [ml5.js / Mobilenet](https://learn.ml5js.org/#/reference/image-classifier)
* Reconnaissance d'images avec classes propres avec [Teachable Machine](https://teachablemachine.withgoogle.com/)
* Reconaissance de visages avec [ml5js / facemesh](https://learn.ml5js.org/#/reference/facemesh)

### Balises script
Balise à intégrer dans le fichier **index.html** de votre projet pour accéder aux fonctionnalités de ml5.js
```
<script src="https://unpkg.com/ml5@latest/dist/ml5.min.js"></script>
```
Balise à intégrer dans le fichier **index.html** de votre projet pour accéder à des fonctionnalités annexes
```
<script src="https://master.designbordeaux.fr/projets/2020-2021/MAG2E11/p5_ml5_helpers.js"></script>
```

### Liens
* [Anthony Masure / Thinking Machines](http://www.anthonymasure.com/en/conferences/2020-01-thinking-machines-bal-paris)<br />Ces slides sont complémentaires d'un atelier à la HEAD (Genève) du même nom mené par [Douglas Edric Stanley](http://www.abstractmachine.net/fr/biography) et [Jurg Lehni](http://juerglehni.com/information) : *Le projet Thinking Machines revisite la notion d’outils personnalisés à l’époque des intelligences dites « artificielles » et explore comment la création d'assistants personnalisés peut remodeler le processus de travail des designers.*
* [Vadim Bernard / Le design graphique pour les machines](http://strabic.fr/Le-design-graphique-pour-les-machines)<br />*Que se passe-t-il quand le destinataire d’une composition graphique est une machine ? La reconnaissance de formes par les machines n’est pas nouvelle – on peut penser aux typographies OCR ou aux QR codes – mais nous arrivons à un point où sont reconnues non plus seulement des formes, mais aussi les relations qui peuvent exister entre elles.*

### Groupes
* Undercover / Hamza, Nathan,Morgane,Fanny,Thomas
* Reflector / Alexane, Camille, Flavie, Cassandre
* (Hidendity) / Amélie, Cannelle, Sabrina
