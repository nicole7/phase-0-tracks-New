# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # turn the string into an array by using split
  # Create empty hash
  # Create loop and iterate thru each item of the array and add them to the key
  # set default quantity
  # Within the same loop add the qty to each value pair
  # print the list to the console [can you use one of your other methods here?]
# output:  hash
def create_list(items)
	items = items.split(' ')
	hash_list = {}

	items.each do |item|
		hash_list[item] = 10
	end
	hash_list
end



# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: adding item to list
# output: hash (with new item)
def add_list(list, item_name, opt_qty = 10)
	list[item_name] = opt_qty
	list
end
# Method to remove an item from the list
# input: list, item name
# steps: remove item from hash
# output: hash (minus the item)
def remove_list(list, item_name)
	list.delete(item_name)
	list
end
# Method to update the quantity of an item
# input: list, item name, and req qty
# steps: Take one of the item's qty and have it equal a diff qty
# output: hash (with the new item's qty)
def update_list(list, item_name, req_qty = 5)
	list[item_name] = req_qty
	list
end

# Method to print a list and make it look pretty
# input: list
# steps: Create a loop and iterate thru each item (key and value)
#        Change each key value pair into a string
#        Print the strings every iteration
# output: (nothing)
def pretty_list(list, item_name, opt_qty)
	counter = 0
	list.each do |key, value|
		p "#{key} #{value}"
	end
	
end

def create_new_list(new_string,new_qty_list)
	new_string = new_string.split
	new_hash_list = {}
	counter = 0

	while new_string.length > counter
		new_string.each do |item|
			new_hash_list[item] = new_qty_list[counter]
		end
	end
		counter += 1

	new_hash_list
end

string_items = "carrots pizzas bananas apples cereal"
hash_list = create_list(string_items)
add_list(hash_list, "bread", 5)
remove_list(hash_list, "bananas")
update_list(hash_list, "apples")
pretty_list(hash_list, string_items, 10)

new_string_items = "lemonade tomatoes onionx ice_cream"
new_qty_list = [2,3,1,4]
new_hash_list = create_new_list(new_string_items, new_qty_list)
p new_hash_list

#Refelct:
#From pseudocode, I learned that it is much easier to write out essentially directions of what you need to do 
#and then go back and just fill it in with code. It's more time efficient

#Using arrays and hashes mak it easier to store information and pass it to another method
#It's also easier to change the data when you can iterate thru it with an array or hash

#A method returns an object but not something you can really work with.
#You have call the method and store the returned object in a varibale and use that variable

#You can pass integers, string, floats, booleans, arrays, hashes and other methods. So pretty much almost anything

#You can call a method within another method. You can retrn from one method and store it in a variable to be passed as 
#an argument into another method
#You can also pass a method within another methods arguement

#The concepts of how methods work and how to use return values were solidified.
#Also, I got some clarification on hashes and arrays but I'm still not there with completely understanding it
#It's still hard when I need to compare/manipulate a hash with an array or an array with a string. As
#each have their own methods and behaviors, I get confused on how to make the change I want


