/*
Exemple  de sketch qui permet de sauvegarder un fichier au format SVG
Vous pouvez l'utiliser comme trame pour produire le motif qui sera imprimé lundi 15 avril.
—
Un appui sur une touche du clavier permet un export horodaté dans le dossier de sketch (CTRL + K pour y accéder)
*/

// ----------------------------------------------
import toxi.geom.*;
import toxi.processing.*;
import processing.svg.*;
import java.util.*;

// ----------------------------------------------
ToxiclibsSupport gfx;
List<LineMouse> lines=new ArrayList<LineMouse>();
LineMouse line;

// ----------------------------------------------
boolean bExport = false;
int sampleDistance=40; // à changer pour essayer !

// ----------------------------------------------
void setup()
{
  size(630, 900); // proportionnel au format A4 (21x30 cm)
  gfx=new ToxiclibsSupport(this);
  smooth();
}

// ----------------------------------------------
void draw()
{
  background(255);

  // Pas de remplissage et ligne / contours noirs.
  stroke(0);
  noFill();

  if (bExport)
  {
    beginRecord(SVG, timestamp()+"_export.svg");
  }

  // ================================================
  // ================================================
  // Vous pouvez placer vos commandes de dessin ici

  if (line != null)
    line.update();

  for (LineMouse l : lines)
    l.draw();

  // ================================================
  // ================================================

  if (bExport)
  {
    endRecord();
    bExport = false;
  }
}

// ----------------------------------------------
void mousePressed()
{
  line = new LineMouse();
  println("> new linemouse");
}


// ----------------------------------------------
void mouseReleased()
{
  if (line !=null)
  {
    lines.add(line);
    line = null;
    println("> add linemouse");
  }
}

// ----------------------------------------------
void keyPressed()
{
  bExport = true;
}


// ----------------------------------------------
// fonction qui donne un horodatage
String timestamp() 
{
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}
