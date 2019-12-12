let listeSong1 = 
[
	"Romain/titre01.mp3",
	"Romain/titre02.mp3",
	"Romain/titre03.mp3"
];
let song1;




function gotResult(error, results)
{
	let label = results[0].label;
	if (label == "Romain")
	{
		let index = random(0, listeSong1);
		song1.loadSound( listeSong1[index], function()
		{
			song1.play()
		});
	}
	else if (label == "Alex")
	{
		// ...
	}
}