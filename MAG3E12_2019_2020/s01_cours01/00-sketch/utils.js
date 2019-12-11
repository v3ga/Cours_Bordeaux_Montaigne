// ----------------------------------------------
function drawText(s,x,y)
{
	fill(0);
	rect(0,y-10,width,y+10);
	fill(255);
	text(s,x,y+10);
}

// ----------------------------------------------
function imageFit(img)
{
	let ratioCanvas = width / height;
	let ratioImage = img.width / img.height;
	let imgWidth, imgHeight;
	// Canvas en mode paysage
	if (ratioCanvas >= 1)
	{
		if (ratioImage<1)
		{
			imgHeight = height;
			imgWidth = ratioImage * img.width;
			image(img,0,0,imgWidth,imgHeight); 
		}
		else
		{
			imgWidth = width;
			imgHeight = imgWidth / ratioImage;
			image(img,0,0,imgWidth,imgHeight); 
		}
//		console.log("imageFit("+imgWidth+","+imgHeight+")");
	}
	// Mode portrait
	else
	{

	}
	
}

