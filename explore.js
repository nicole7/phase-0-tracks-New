//Using a for loop, iterate over the word hello going from the end of the string to 
//the beginning. 
//Have the counter equal the string's length and count back
// Store this in a new variable and return it
//Call the method

//Declare string variable


//Create function to say Hello in reverse

function sayReverseHello(str){
  var reversed = '';
  	//Var i will equal the length -1 otherwise iteration will be off 
  	//And it will be undefined
	for(var i=str.length - 1; i>=0; i--){
	  reversed += str[i];
	  
	}
	  return reversed;
   
}

var str = "hello";

console.log(sayReverseHello(str));

x = 2;
y = 3;

if (x+y == 5){
	console.log("5");
}
else{
	console.log("Does not equal 5");
}