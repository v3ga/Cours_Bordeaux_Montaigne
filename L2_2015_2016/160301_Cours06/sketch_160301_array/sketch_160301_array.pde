float[] x = new float[6];

x[0] = 123;
x[1] = 76;
x[2] = 47;
x[3] = 52;
x[4] = 114;
x[5] = 93;

size(500,500);

for (int i = 0; i < 6; i = i+1)
{
  ellipse( x[i], 250, 25, 25 );
}

/*
ellipse( x[0], 250, 25, 25 );
ellipse( x[1], 250, 25, 25 );
ellipse( x[2], 250, 25, 25 );
ellipse( x[3], 250, 25, 25 );
ellipse( x[4], 250, 25, 25 );
ellipse( x[5], 250, 25, 25 );
*/