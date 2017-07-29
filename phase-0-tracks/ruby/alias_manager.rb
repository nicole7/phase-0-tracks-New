#Get user input for name
#Create method that takes the name and swaps the first and last name
#Create a method that changes all the voewls to the next vowel using string ["a","e","i","o","u"]
#Within this method, change all the consonants to the next letter ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]

#Create method that will take in the name given by the user
def spy_alias(name)
	#Create a variable equal that name/parameter downcase, split(make array), reverse two elements, and then join (make string again)
	new_name = name.downcase.split(' ').reverse.join(' ')
	#Print this new name
	p new_name
#Create an index variable for each index in the loop
index = 0
#Set a variable to a string with all possible vowels
vowels = "aeiou"
#Set a variable to a string with all possible consonants
consonants = "bcdfghjklmnpqrstvwxyz"

#Create a while loop to loop through the index of new_name and vowels/consonants
# index=0 is less than the length of new_name
while index < new_name.length
	#If the current index of new_name is included in vowels
	if vowels.include?(new_name[index])
		#Store in next_vowel, the index value new_name in the index of vowels, get the next index (number)
		#So cat, would have new_vowel = 0 .next would equal to 1 of vowels
		#[index] vs .index 
		next_vowel = vowels.index(new_name[index]).next
		#new_name at this index will equal vowels at the index set above
		#So cat, new_name at 1 is vowels at index 1 which is 'e'
		new_name[index] = vowels[next_vowel]
			#Edge cases, if new_name letter equals the last letter in the sequence of vowels string
			if new_name = vowels.length - 1 
				#Have new_name letter equal to the first index of the vowel string
				new_name = vowels[0]
			end

	#Elif statement for consonants - does consonants include the value from new_name passed at that index
	elsif consonants.include?(new_name[index])
		#next_cons equals the next index number of the new_name index value at the consonant number
		next_cons = consonants.index(new_name[index]).next
		#change new_name at this index value to the next consonant 
		new_name[index] = consonants[next_cons]
			#Edge cases, if new_name letter equals the last letter in the sequence of consonants string
			if new_name = consonants.length - 1 
				#Have new_name letter equal to the first index of the consonants string
				new_name = consonants[0]
			end
	#End if statement
	end
	#Iteration index = index + 1
	index += 1
#End while loop
end
	#return this value for the new agents name
	new_name
#End method	
end

#Ask the user for their name
puts "Please enter your real name"
#Store in the string variable real_name
real_name = gets.chomp
#Call the method by storing in variable alias_name the:
#method call and pass the input from the user into it
#Cannot directly ask for new_name, it's the output, out of scope
alias_name = spy_alias(real_name)
#Print the variable that contains the return value from calling method with input argument
p alias_name




