var el = document.createElement('em');
var bold_el = el.bold();

bold_el.style.color = 'green';

function image1Hide(){
var banditHide = document.getElementById("bandit_hide");
banditHide.style.display = 'none';
};

function hideImage() {
	document.getElementById('button1').addEventListener("click", image1Hide);
	};
	
function image2Sleep(){
var banditSleep = document.getElementById("bandit_sleep");
banditSleep.style.opacity = -1;
};

function fadeImage() {
	document.getElementById('button2').addEventListener("click", image2Sleep);
	};

image1Hide();
hideImage();
image2Sleep();
fadeImage();

	



