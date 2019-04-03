// ----------------------------------------------
/* 
Plutôt que d'écrire : 
PShape forme0;
PShape forme1;
PShape forme2;
Nous écrivons cette syntaxe qui permet de définir par le biais de tableau 3 variables forme[0],forme[1],forme[2]
(Notez bien les crochets)
*/ 
PShape[] forme = new PShape[3];

/*
Cette variable va nous servir pour « sélectionner » une de nos trois formes
*/

PShape formeCourante;

// ----------------------------------------------
void setup() 
{
  size(500,500);

  /*
    On aurait pu écrire aussi 
    for (int i=0 ; i<3; i=i+1)
    {
      forme[i] = createShape();
    }
  */
  forme[0] = createShape();
  forme[1] = createShape();
  forme[2] = createShape();

  /*
    Définition des points qui vont constituer nos trois formes
    Notez que les options de dessin (couleur, noStroke, etc...) se définissent ici et non au moment du dessin
  */
  forme[0].beginShape();
  forme[0].noStroke();
  forme[0].fill(200,0,0,10);
  forme[0].vertex(0,0);
  forme[0].vertex(200,0);
  forme[0].vertex(200,50);
  forme[0].vertex(0,50);
  forme[0].endShape(CLOSE);

  forme[1].beginShape();
  /* À vous de jouer */ 
  forme[1].endShape(CLOSE);

  forme[2].beginShape();
  /* À vous de jouer */ 
  forme[2].endShape(CLOSE);
  
  formeCourante = forme[0];
}

// ----------------------------------------------
void draw()
{
  // Déplacement au centre de l'écran
  translate(width/2, height/2);
  // Rotation en fonction de la position de la souris
  rotate( radians(mouseX) );
  // Si l'utilisateur appui sur un bouton de la souris alors ... 
  if (mousePressed)
  {
    // ... on dessine la forme courante à la position courante
    // À essayer : changer les coordonnées (0,0)
    shape(formeCourante,0,0);
  }
}

// ----------------------------------------------
void keyPressed()
{
  // Si la touche est 'a', on définit la forme courante 0
  if (key == 'a')
  {
    formeCourante = forme[0];
  }
  // Si la touche est 'b', on définit la forme courante 1
  else if (key == 'b')
  {
    formeCourante = forme[1];
  }
  // Si la touche est 'c', on définit la forme courante 2
  else if (key == 'c')
  {
    formeCourante = forme[2];
  }
  else if (key == 's')
  {
    /* Faire une capture d'écran */
  }


}