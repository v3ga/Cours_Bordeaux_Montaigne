void setup()
{
  // Taille du sketch
  size(400, 400);
  // Titre de la fenêtre (pas documenté dans Processing)
  frame.setTitle("Cours 02 / Dessiner / sketch_01_montagnes");
}

void draw()
{
  background(255); // Fond blanc

  // Dessin soleil rouge
  fill(255, 0, 0);
  noStroke();
  ellipse(mouseX, 200, 100, 100);

  // Dessin montagnes
  fill(255); // remplissage blanc
  strokeWeight(3); // épaisseur des lignes : 3 pixels
  stroke(0); // contour noir
  beginShape();
  vertex(0, 400);
  vertex(100, 200);
  vertex(200, 100);
  vertex(300, 370);
  vertex(400, 280);
  endShape();
}
