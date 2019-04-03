
var btnClear,btnExport;
var sliderTaille;

function onClickBtnClear()
{
	background(200);
}

function onClickBtnExport()
{
	save("export.svg");
}

function setup() 
{
  createCanvas(500, 500, SVG);
  background(200);
  btnClear = createButton("Effacer");
  btnClear.mousePressed( onClickBtnClear );
  btnExport = createButton("Exporter");
  btnExport.mousePressed( onClickBtnExport );
  sliderTaille = createSlider( 5, 50, 10 );
  title = select("#titre");
  title.html("Export vectoriel");
}

function draw() 
{
}

function mouseDragged()
{
	ellipse(mouseX,mouseY,50,50);
}



/*

function setup() {
    createCanvas(600, 200, SVG); // Create SVG Canvas
    strokeWeight(2);
    stroke('#ED225D');
}

function draw() {
    var x = frameCount / 100;
    var y = sin(x * PI * 2);
    line(x * width, height * 0.5,
         x * width, y * height / 2 + height * 0.5);
    if (frameCount > 100) {
        noLoop();
        save();
    }
}
*/
