//Create an array
//Create a function to pass the array in as an argument
//Find the longest word in the function
//Create a loop in the function to iterate through each item and 
//compare the lengths of each string and using if else to compare lengths
//Add driver code to test a few arrays

function test(array){
	var start_length = 0;
	var longest_string;
	for(var i = 0; i < array.length; i++){
			if (array[i].length > start_length){
				var start_length = array[i].length;
				var longest_string = array[i];
			}
    }
    console.log(longest_string);
 }




//.................................................

//Create two objects with key-value pairs
//Create function that takes in these objects as arguments
//Compare them to see if share at least one key-value pair 
//Print this out if matching

function test_match(x, y){
	//console.log(x);
	
	// for(i = 0; i < x.length; i++){
	// 	for(j = 0; j < ylength; j++){
	// 		console.log(x[i] + " " + y[j]);
	// 	}

	for(var i in x){
			if(x[i] === y[i]){
			 	console.log(true);
			}
		
	}
}



//.....................................

//Create a function that takes in an integer as an argument for array length
//Generate random letters and through a loop have it print out these 
//words (1 - 10 letters)
//Then, generate array, print array, feed longest array to function and print it

function generate(array_size){
	var alpha = "abcdefghijklmnopqrstuvwxyz";
	var rand_string = " ";
	var rand_array = [];
		for(var i = 0; i < array_size; i++){
			for(var j = 0; j < 10; j++){
				var rand_index = (Math.floor(Math.random() * alpha.length));
				rand_string = rand_string + alpha[rand_index];	
			}
			

		rand_array.push(rand_string);
		}
	
	console.log(rand_array);
}
//..................................................
//DRIVER CODE
var list_items = ["banana", "banana foster", "banana pudding"];
test(list_items);
var more_lists = ["flower", "vase", "pot"];
test(more_lists);
var another_list = ["notebook", "pencil", "computer"];
test(another_list);

test_match({name: "Otis", age: 4}, {name: "Milo", age: 4});
test_match({month: "July", day: 21}, {month:"July", day: 22});

generate(3);

var test_array = [];
var word = " ";
for(var i = 0; i < 10; i++){
	rand_num = Math.floor(Math.random() * 10);
	console.log(rand_num);
	for(var j = 0; j < rand_num; j++){
		alpha = "abcdefghijklmnopqrstuvwxyz";
		var rand_index += Math.floor(Math.random() * alpha.length);
		console.log(rand_index);
		
		word = word + alpha[rand_index];
		console.log(word);
    }
    test_array.push(word)
    console.log(test_array);
    test(test_array);

}


	


	





