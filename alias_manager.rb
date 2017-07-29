#Create a method that takes a first and last name as an argument
#Lower case the name
#Split the string into an array
#Reverse the order
#Return that array
#Create new method that takes that returned array as an argument
#Create two strings, one for vowels and one consonants
#Change the the name to a string
#For each letter, see if it includes a vowel, if it does, change it to the next vowel 
#in the string
#Otherwise, check if its a consonant, if it is, change it to the next letter in that string
#Take the name and change it back to an array
#Uppercase both new first and last name
#Return the name

#Takes the name, reverses, splits and lowercases it
def take_name(name)
	#store new name in new variable, downcase, split in an array and reverse order
	new_name = name.downcase.split(' ').reverse.join(' ')
	#return the array of all the letters
	#p new_name
	#puts new_name.length
	#p new_name
	vowel_list = "aeiou"
	consonant_list = "bcdfghjklmnpqrstvwxyz"
	index = 0
	while index < 16
		#[index] takes and integer and retunrs char, .index takes a char
		#and returns integer**
		#Does the letter at the # index of new_name match the vowel_list string
		if vowel_list.include?(new_name[index])
			#next_vowel_index is a #
			#it equals the vowel string at the letter index 
			#from new_name's # index
			#Then get the next number
			next_vowel_index = vowel_list.index(new_name[index]).next
			#new_name at that index # now equal this new # 
			#Equals the vowel list at index of the next #
			new_name[index] = vowel_list[next_vowel_index]
		
		end
		index += 1
	end
	
	new_name
end

#Take the change name and get the next consonant in the sequence
#def change_name_consonant

#end

#puts take_name("Nicole Gasperini")
#Store the return value in a variable to pass to other methods
puts take_name("Nicole Gasperini")


