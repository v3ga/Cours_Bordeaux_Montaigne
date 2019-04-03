size(500,500);


for (float x=0; x < 500 ; x = x+1)
{
  // Ligne "random"
  line(x,0, x,random(0,250));

  // Ligne "noise"
  // noise retourne une valeur entre 0 et 1
  line(x,250,x,250+250*noise(0.01*x));
}