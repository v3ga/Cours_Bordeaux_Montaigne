// Programme de dessin

size(500,500); // taille de la fenêtre
point(250,400);
point(250,250);


line(500,0,0,500);
line(0,0,500,500);
strokeWeight(10);
stroke(188,131,182);
line(250,0,250,500);
line(0,250,500,250);
strokeWeight(1);
fill(124,92,120,200);
//noStroke();
noFill();
ellipse(250,250,200,100);

saveFrame("export.png");