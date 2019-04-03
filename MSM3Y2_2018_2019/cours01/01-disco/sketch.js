var cx = 200;
var cy = 200;
var rstar = 200;
var vstar = 0;
var bstar = 0;
var btnClear;
var btnExport;
var sliderEpaisseur;
var title;

function onClickBtnClear()
{
	background(0);
}

function onClickBtnExport()
{
	saveCanvas("disco.png");
}

function setup() 
{
  createCanvas(500, 500);
  background(0);
  btnClear = createButton("Effacer");
  btnClear.mousePressed( onClickBtnClear );
  btnExport = createButton("Exporter");
  btnExport.mousePressed( onClickBtnExport );
  sliderEpaisseur = createSlider( 5, 50, 10 );
  title = select("#titre");
  title.html("Disco ! ");
}

function draw() 
{
  // background(220);
	// ellipse(mouseX,mouseY,50,50);
	// line(cx,cy,mouseX,mouseY);
}

function mousePressed()
{
	console.log("click!");
	cx = mouseX;
	cy = mouseY;
	rstar = random(0,255);
	vstar = random(0,255);
	bstar = random(0,255);
}

function mouseDragged()
{
	stroke(rstar,vstar,bstar,5);
  	strokeWeight( sliderEpaisseur.value() );
	line(cx,cy,mouseX,mouseY);
}

function keyPressed()
{
//	saveCanvas("disco.png");
}



