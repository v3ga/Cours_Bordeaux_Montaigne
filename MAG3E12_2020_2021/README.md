
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

## Lundi 14 décembre
* Exportation d'un projet (hors éditeur en ligne)
  * utilisation d'un client FTP pour téléverser les fichiers en ligne.
  * mise en ligne sur le serveur du master.
* Modification de la page index.html
  * chargement de fontes depuis Google Fonts.
  * rudiments de styles css : mises en forme de liens, titres, paragraphes, intégration d'images.

#### Identifiants FTP
* Hôte : 7x6pk.ftp.infomaniak.com
* Identifiant : 7x6pk_etudiants2
* Port : 21
* Mode de passe : *communiqué offline*

Les dossiers sont accessibles depuis l'adresse : https://master.designbordeaux.fr/projets/2020-2021/MAG3E12/[nom_dossier]
Pour que le dossier soit "lisible" depuis le navigateur, il faut qu'il contienne obligatoirement un fichier *index.html* Sinon le dossier est marqué comme interdit d'accès.

## Ressources
* [Anthony Masure / Thinking Machines](http://www.anthonymasure.com/en/conferences/2020-01-thinking-machines-bal-paris)<br />Ces slides sont complémentaires d'un atelier à la HEAD (Genève) du même nom mené par [Douglas Edric Stanley](http://www.abstractmachine.net/fr/biography) et [Jurg Lehni](http://juerglehni.com/information) : *Le projet Thinking Machines revisite la notion d’outils personnalisés à l’époque des intelligences dites « artificielles » et explore comment la création d'assistants personnalisés peut remodeler le processus de travail des designers.* (voir à partir du [slide 67](http://www.anthonymasure.com/content/04-conferences/slides/2020-01-thinking-machines-bal-paris.html#/67))
* [Julien Drochon & Anthony Masure / Vox Machines](https://recherche.esad-pyrenees.fr/vox-machines/)<br />*Ce programme de recherche vise à explorer les possibilités et limites offertes par la synthèse vocale, dans le champ du design expérimental, tant du point de vue de la réalisation de prototypes logiciels et matériels que de celui des humanités numériques.*
* [Vadim Bernard / Le design graphique pour les machines](http://strabic.fr/Le-design-graphique-pour-les-machines)<br />*Que se passe-t-il quand le destinataire d’une composition graphique est une machine ? La reconnaissance de formes par les machines n’est pas nouvelle – on peut penser aux typographies OCR ou aux QR codes – mais nous arrivons à un point où sont reconnues non plus seulement des formes, mais aussi les relations qui peuvent exister entre elles.*

## Jeudi 17 décembre / vendredi 18 décembre
Ces deux séances seront dédiées aux développements de vos applications dans la mesure du possible, en ligne. Je vous aiderai bien entendu sur la partie technique, il sera nécessaire d'ici jeudi d'avoir le scénario prêt. 

## Projet d'application / service en ligne
Pour ce projet vous produirez une application reposant sur les services de reconnaissances automatisées proposées sur le site [Techable Machine](https://teachablemachine.withgoogle.com/) ou les fonctionnalités de [ml5.js](https://ml5js.org/) : reconnaissances d'images, de sons ou de postures. L'application sera un *prototype* montrant la validité du principe que vous aurez imaginé, en s'inscrivant dans un cadre réaliste de réponse à un besoin potentiel. Le domaine d'application est libre (sociétal, médical, ...) 

#### Evaluation
<table>
 <tr><td>:point_right: prototypage de l'application, fonctionnement en ligne</td><td>8 points</td></tr>
 <tr><td>:point_right: potentialités du service, innovation</td><td>7 points</td></tr>
 <tr><td>:point_right: document PDF, vidéo explicative </td><td>5 points</td></tr>
</table>


#### Livrables
* **une application web**, accès en ligne sur le serveur du master.
* **une vidéo explicative** (max 1mn30). Format vidéo : 1920 x 1080 (HD)
* **un document** (max une page) avec le titre de l'application et un résumé du principe. Ce document servira pour la mise en ligne des projets sur le site du master.


#### Date de rendu
à remettre pour le lundi 11 janvier au plus tard.

#### Groupes
* Léa / Charlène / Thomas / Tania
* Antonin / Draghixa / Marine / Florian
* Ines / Ingrid / Anouch / Chloé
* Maina / Sarah / Huan / Elea
