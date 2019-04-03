// --------------------------------------
// 
//
// Sketch d'exemple qui montre la communication entre arduino et p5.js
// 
// À installer : https://github.com/vanevery/p5.serialcontrol/releases
// 


// Port série (dépend de l'installation d'arduino)
var portName = '/dev/cu.usbmodem1411';

// --------------------------------------
function setup() 
{
    // Création de l'élément canvas sur la page web
    createCanvas(500,500);
    // création de la communication avec arduino
    serial = new p5.SerialPort(); 
    serial.open(portName);
}

// --------------------------------------
function draw() 
{
    if (mouseX <= 250)
    {
        // Dessine un fond gris
        background(127,127,127);
        // Envoie la valeur 0 à arduino ( => on éteint la led)
        serial.write(0);
    }
    else
    {
        // Dessine un fond rouge
        background(255,0,0);
        // Envoie la valeur 1 à arduino ( => on allume la led)
        serial.write(1);
    }
}
