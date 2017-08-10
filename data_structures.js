//Arrray for colors
var color = ["blue", "green", "orange", "yellow"];
var horseNames = ["Wilber", "Ed", "Magik", "Seabiscut"];

color.push("Violet");
horseNames.push("Mustang");


	var new_data_structure  = {};
for(i=0; i<=horseNames.length-1; i++){
	
	new_data_structure[horseNames[i]] = color[i];
}

console.log(new_data_structure);

var car = {name: " ", model: " ", fast: true};

function Car(name, model, fast) {
	this.name = name;
	this.model = model;
	this.fast = fast;
	this.talk = function() {console.log("Hello!")};
	this.evil = function() {console.log("This car is evil")};
	this.time_travel = function() {console.log("This can travel back in time Marty!")};
}

console.log("Other cars: ");

var new_car = new Car("Herbie", "VW Beatle", true);
	this.talk;
console.log(new_car);

var new_car2 = new Car("Christine", "Plymouth Fury", true);
	this.evil;
console.log(new_car2);

var new_car3 = new Car("Back to Future Car", "DeLorean", true);
	this.time_travel;
console.log(new_car3);

//To iterate through:
// Can use for...in loops.
//Gotchas for this may include that it will give all properties of 
//the inherited properties whether you want them included or not














