class SketchSarah extends Sketch
{
  int nbMotifs = 10; //Nombre de motifs

  SketchSarah()
  {
    super("Sarah");
  }

  void settings()
  {
    size(600,400);
  }
  
  void draw()
  {
    int i,j;
    for (j=0; j<3; j=j+1)
    {
      for (i=1; i<=nbMotifs; i=i+1) // Boucle qui va modifier chaque motif l'un après l'autre
      {
        if (j==0) // Première ligne de triangle (1)
        {
          triangle((i-1)*(width/float(nbMotifs)), (height/5.0)+2, (i-1)*(width/float(nbMotifs))+(4.0/5.0)*(width/float(nbMotifs)), (height/5.0)+35, (i)*(width/float(nbMotifs)), (height/5.0)+2);
          triangle((i-1)*(width/float(nbMotifs)), (height/5.0)-2, (i-1)*(width/float(nbMotifs))+(4.0/5.0)*(width/float(nbMotifs)), (height/5.0)-35, (i)*(width/float(nbMotifs)), (height/5.0)-2);
          triangle((i-1)*(width/float(nbMotifs)), (height/5.0)+2, (i-1)*(width/float(nbMotifs))+(1.0/5.0)*(width/float(nbMotifs)), (height/5.0)+35, (i)*(width/float(nbMotifs)), (height/5.0)+2);
          triangle((i-1)*(width/float(nbMotifs)), (height/5.0)-2, (i-1)*(width/float(nbMotifs))+(1.0/5.0)*(width/float(nbMotifs)), (height/5.0)-35, (i)*(width/float(nbMotifs)), (height/5.0)-2);
        }
        if (j==1) // Deuxième ligne de triangle (2)
        {
          triangle((i-1)*(width/float(nbMotifs)), ((2.0/5.0)*height)+2, (i-1)*(width/nbMotifs)+0.5*(width/float(nbMotifs)), ((2.0/5.0)*height)+35, (i)*(width/nbMotifs), ((2.0/5.0)*height)+2);
          triangle((i-1)*(width/float(nbMotifs)), ((2.0/5.0)*height)-2, (i-1)*(width/nbMotifs)+0.5*(width/float(nbMotifs)), ((2.0/5.0)*height)-35, (i)*(width/nbMotifs), ((2.0/5.0)*height)-2);
          triangle((i-1)*(width/float(nbMotifs))+(1.0/5.0)*(width/float(nbMotifs)), ((2.0/5.0)*height)+7, (i-1)*(width/float(nbMotifs))+0.5*(width/float(nbMotifs)), ((2.0/5.0)*height)+28, (i)*(width/float(nbMotifs))-(1.0/5.0)*(width/float(nbMotifs)), ((2.0/5.0)*height)+7);
          triangle((i-1)*(width/float(nbMotifs))+(1.0/5.0)*(width/float(nbMotifs)), ((2.0/5.0)*height)-7, (i-1)*(width/float(nbMotifs))+0.5*(width/float(nbMotifs)), ((2.0/5.0)*height)-28, (i)*(width/float(nbMotifs))-(1.0/5.0)*(width/float(nbMotifs)), ((2.0/5.0)*height)-7);
          triangle((i-1)*(width/float(nbMotifs))+(2.0/5.0)*(width/float(nbMotifs)), ((2.0/5.0)*height)+12, (i-1)*(width/float(nbMotifs))+0.5*(width/float(nbMotifs)), ((2.0/5.0)*height)+ 21, (i)*(width/float(nbMotifs))-(2.0/5.0)*(width/float(nbMotifs)), ((2.0/5.0)*height)+12);
          triangle((i-1)*(width/float(nbMotifs))+(2.0/5.0)*(width/float(nbMotifs)), ((2.0/5.0)*height)-12, (i-1)*(width/float(nbMotifs))+0.5*(width/float(nbMotifs)), ((2.0/5.0)*height)-21, (i)*(width/float(nbMotifs))-(2.0/5.0)*(width/float(nbMotifs)), ((2.0/5.0)*height)-12);
        }
        if (j==2) // Troisième ligne de triangle/arc (3)
        {
          triangle((i-1)*(width/nbMotifs), ((3.0/5.0)*height)+2, (i-1)*(width/nbMotifs)+(2.0/3.0)*(width/nbMotifs), ((3.0/5.0)*height)+35, (i)*(width/nbMotifs), ((3.0/5.0)*height)+2);
          triangle((i-1)*(width/nbMotifs), ((3.0/5.0)*height)-2, (i-1)*(width/nbMotifs)+(1.0/3.0)*(width/nbMotifs), ((3.0/5.0)*height)-35, (i)*(width/nbMotifs), ((3.0/5.0)*height)-2);
          noFill();
          arc(i*(width/nbMotifs)-0.5*(width/nbMotifs), (3*height/5)+2, (width/nbMotifs), 70, 0, PI);
          arc(i*(width/nbMotifs)-0.5*(width/nbMotifs), (3*height/5)-2, (width/nbMotifs), 70, PI, TWO_PI);
        } else // Dernière ligne de triangle (4)
        {
          triangle((i-1)*(width/nbMotifs), ((4.0/5.0)*height)+2, (i-1)*(width/nbMotifs)+0.5*(width/nbMotifs), ((4.0/5.0)*height)+35, (i)*(width/nbMotifs), ((4.0/5.0)*height)+2);
          triangle((i-1)*(width/nbMotifs), ((4.0/5.0)*height)-2, (i-1)*(width/nbMotifs)+0.5*(width/nbMotifs), ((4.0/5.0)*height)-35, (i)*(width/nbMotifs), ((4.0/5.0)*height)-2);
          triangle((i-1)*(width/nbMotifs)+(1.0/5.0)*(width/nbMotifs), ((4.0/5.0)*height)+2, (i-1)*(width/nbMotifs)+0.5*(width/nbMotifs), ((4.0/5.0)*height)+28, (i)*(width/nbMotifs)-(1.0/5.0)*(width/nbMotifs), ((4.0/5.0)*height)+2);
          triangle((i-1)*(width/nbMotifs)+(1.0/5.0)*(width/nbMotifs), ((4.0/5.0)*height)-2, (i-1)*(width/nbMotifs)+0.5*(width/nbMotifs), ((4.0/5.0)*height)-28, (i)*(width/nbMotifs)-(1.0/5.0)*(width/nbMotifs), ((4.0/5.0)*height)-2);
        }
      }
    }
    line(0, (height/2)+2, width, (height/2)+2); // Dessin des deux lignes/traits au milieu
    line(0, (height/2)-2, width, (height/2)-2); 
    for (int k = 0; k<20; k=k+1) // Dessin des triangles en haut (1) + k
    {
      line(k*(1.0/20.0)*width, (1.0/10.0)*height-30, k*(1.0/20.0)*width+(1.0/40.0)*width, (1.0/10.0)*height);
      line(k*(1.0/20.0)*width+(1.0/40.0)*width, (1.0/10.0)*height, (k+1)*(1.0/20.0)*width, (1.0/10.0)*height-30.0);
    }
    for (int k = 0; k<20; k=k+1) //Dessin des triangles en bas (9) + k
    {
      line(k*(1.0/20.0)*width, (9.0/10.0)*height+30.0, k*(1.0/20.0)*width+(1.0/40.0)*width, (9.0/10.0)*height);
      line(k*(1.0/20.0)*width+(1.0/40.0)*width, (9.0/10.0)*height, (k+1)*(1.0/20.0)*width, (9.0/10.0)*height+30.0);
    }
    for (int k = 0; k<20; k=k+1) //Dessin des petits cercles en haut (3) + k
    {
      circle((k/20.0)*width+10.0, (3.0/10.0)*height, 10.0);
    }
    for (int k = 0; k<20; k=k+1) //Dessine des petits cercles en bas (7) + k
    {
      circle((k/20.0)*width+10.0, (7.0/10.0)*height, 10.0);
    }
  
    //rect(0,0,width-1,height-1);
  }
}
