var el = document.createElement('intro');
el.innerHTML = '<p>My dog, Bandit, is scared of everything</p>';

el.style.color = 'green';


function displayImage() {
	var bandit = document.getElementBy("viewBandit");
	bandit.hidden = false
}
var bandit = document.getElementById("viewBandit").addEventListener("click", displayImage);