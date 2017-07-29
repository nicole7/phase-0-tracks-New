#Release 2

#A method that iterates though the items, deleteing any that meet a certain condition
#(for example, delteing any numbers that are less than 5)
numbers_array = [1,2,3,4,5,6,7,8,9,10]
numbers_hash  = {"One" => 1, "Two" => 2, "Three" => 3, "Four" => 4}

#Will include the last element, x > 5 will include 5
numbers_array.delete_if {|number| number > 5} #If you add "puts" before "number > 5" it prints true or false
puts numbers_array.join(" ") #permanent change outside of block

numbers_hash.delete_if {|key, value| value > 2}
puts numbers_hash

puts "..........................."

#A method that filters a data structure for only items that do satisfy a certain
#condition (for exmple, keeping any numbers that are less than 5)
numbers_array = [1,2,3,4,5,6,7,8,9,10]
numbers_hash  = {"One" => 1, "Two" => 2, "Three" => 3, "Four" => 4}
#Will NOT include the first element, x > 5 will NOT inlude 5 and will start with 6
numbers_array.keep_if {|number| number > 5}
puts numbers_array.join(" ")#Permanent change outside of block

numbers_hash.keep_if {|key, value| key == "One"}
puts numbers_hash

puts "................................"

#A different method that filters a data structure for only items satisfying 
#a certain condition -- Ruby offers several options!
numbers_array = [1,2,3,4,5,6,7,8,9,10]
numbers_hash  = {"One" => 1, "Two" => 2, "Three" => 3, "Four" => 4}

numbers_array.select! {|number| number == 7 || number == 8}
puts numbers_array

numbers_hash.select! {|key,value| key.include?("o") || key.include?("O")}
puts numbers_hash

puts "..........................................."

#A method that will remove items from a data structure until the condition in the 
#block evaluates to false, then stops (you may not find a perfectly working option
#for the hash, and that's ok)
numbers_array = [1,2,3,4,5,6,7,8,9,10]
numbers_hash  = {"One" => 1, "Two" => 2, "Three" => 3, "Four" => 4}
#This will include the first element, x > 3 will include 3
#Print this out, rather then outside block, to see results, includes 3
puts numbers_array.drop_while {|number| number < 3} #returns false on its own
	#This returns all of them, doesnt change it
		#puts numbers
	new_numbers_array = numbers_array.drop_while {|number| number < 3}
	puts new_numbers_array.join(',')

#Will drop all that are less than 3 EXCEPT 3 itself. Keeps 3 and 4
#But prints them like an array?
puts numbers_hash.drop_while {|key, value| value < 3}
new_numbers_hash = numbers_hash.drop_while {|key, value| value < 3}
#Prints like a multidimentional array!
p new_numbers_hash



#Release 1
#Write a method that takes a block
def mth
	girl_name = "Sally"
	dog_name = "Spot"
	puts "Hello, this is the before message"
	yield(girl_name, dog_name)
	puts "Goodbye, this is the after message"
	yield(girl_name, dog_name)
end

mth {puts "Now print this"}

mth {|girl_name, dog_name| puts "#{girl_name} likes her new dog #{dog_name}"}

#Array and Hash
pets = ["dog", "cat", "bird", "lizard"]

people_and_their_pets = {
	"Nicole" => "dog",
	"Carlos" => "cat",
	"Brendan" => "bird",
	"Kate" => "lizard"
}

#each
pets.each {|pet| puts pet}
people_and_their_pets.each {|people, pets| puts "#{people} owns a #{pets}"}

#map
new_pets = pets.map {|pets| p pets + "?"}
p new_pets
p pets

new_people_and_their_pets = people_and_their_pets.map do |people, pets| 
	[people, pets].flatten
end
p new_people_and_their_pets
p people_and_their_pets

p pets
#map!
pets.map! do |pet| 
	pet.reverse
end
p pets

#map! doesnt work on a hash because .map returns an array and a destructive map
#is logically impossible