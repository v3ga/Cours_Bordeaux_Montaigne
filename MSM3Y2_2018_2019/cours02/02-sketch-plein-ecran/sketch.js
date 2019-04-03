
function setup() 
{
  createCanvas(windowWidth, 400);
  background(200);
}

function draw() 
{
  ellipse(mouseX,mouseY,50,50);
}

function windowResized() {
  resizeCanvas(windowWidth, 400);
  background(200);
}
