var blinkIntervalId;
var blinkDuration = 0.25; // secondes
var blinkState = 0;
var mur;

// Arduino
var serial;
var portName = '/dev/cu.usbmodem1411';
var inData=0;
var isBlinking = false;

// Seuil lumière ( valeur entre 0 et 255 )
var seuilCapteur = 180;

// ----------------------------------------------------------------
document.addEventListener('DOMContentLoaded', function() 
{
	SVGInject.setOptions({
		afterInject: function(img, svg) 
		{
			mur = $("#mur--inject-1");
		}
	});

	SVGInject( document.getElementById("Bureau005") );

	$(document).on("keydown", function(e)
	{
		if (e.key == "b")
		{
			if (blinkIntervalId === undefined)
				startBlink();
			else
				stopBlink();

		}
		else if (e.key == "s")
		{
			stopBlink();
		}
	})


    serial = new p5.SerialPort(); 
//    serial.on('list', printList);  // set a callback function for the serialport list event
 	serial.on('connected', serverConnected); // callback for connecting to the server
 	serial.on('open', portOpen);        // callback for the port opening
 	serial.on('data', serialEvent);     // callback for when new data arrives
 	serial.on('error', serialError);    // callback for errors
 	serial.on('close', portClose);      // callback for the port closing
 
//  	serial.list(); 
    serial.open(portName, {baudrate: 9600});
});	

// ----------------------------------------------------------------
function printList(portList) 
{
 // portList is an array of serial port names
 for (var i = 0; i < portList.length; i++) {
 // Display the list the console:
 console.log(i + " " + portList[i]);
 }
}


// ----------------------------------------------------------------
function startBlink()
{
	blinkIntervalId = window.setInterval( blink,  blinkDuration*1000.0);
}

// ----------------------------------------------------------------
function stopBlink()
{
	clearInterval(blinkIntervalId);	
	blinkIntervalId = undefined;
	blinkState = 0;
	updateMur();
}

// ----------------------------------------------------------------
function blink()
{
	blinkState = blinkState == 0 ? 1 : 0;
	updateMur();
}

// ----------------------------------------------------------------
function updateMur()
{
	mur.attr("fill", blinkState ? "#E62E2B" : "#FFFFFF");
}

// ----------------------------------------------------------------
function serverConnected() {
  console.log('connected to server.');
}
 
// ----------------------------------------------------------------
function portOpen() {
  console.log('the serial port opened.')
}
 
// ----------------------------------------------------------------
function serialEvent() 
{
	inData = Number(serial.read()); 
	// console.log(inData);
	if (inData >= seuilCapteur)
	{
		if (blinkIntervalId === undefined)
			startBlink();		
	}
	else
	{
		if (blinkIntervalId)
			stopBlink();		
	}
}
 
// ----------------------------------------------------------------
function serialError(err) {
  console.log('Something went wrong with the serial port. ' + err);
}
 
// ----------------------------------------------------------------
function portClose() {
  console.log('The serial port closed.');
}



