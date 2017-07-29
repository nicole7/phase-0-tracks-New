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
def change_name(name)
	#store new name in new variable, downcase, split in an array and reverse order
	new_name = name.downcase.split(' ').reverse.join(' ')
	#return the array of all the letters
	#p new_name
	#puts new_name.length
	#p new_name
	alias_and_real_name = []
	index = 0
	vowel_list = "aeiou"
	consonant_list = "bcdfghjklmnpqrstvwxyz"
	while index < new_name.length
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
				#Solve for edge cases
				#If the letter is the name is going to be the last letter 
				#in the vowel string, change it automatically to 
				#the first on
		
			
		elsif consonant_list.include?(new_name[index])
			next_consonant_index = consonant_list.index(new_name[index]).next
			new_name[index] = consonant_list[next_consonant_index]

		end #End if statement
		#Incriment outside of if statment but inside while loop
		index += 1
	
	end #End While loop

	#return the new alias name
	new_name
	
	#Take the alias name and stoe it in an array, new name first and real 
	#name second
	alias_and_real_name << new_name << name
	
#End method		
end

#puts take_name("Nicole Gasperini")
#Store the return value in a variable to pass to other methods
#puts take_name("Abby Flywater")

#Create variable to hold a space for the string input
real_name = ""
#Create hash to store the alias name and real name as key value pairs
alias_and_real_name = {}
#MAke a while loop to ask the user for the names they would like to enter until
#they quit out of it
while real_name != "q"
#Ask the user for their name
p "Enter a first and last name? Type 'q' to exit"
#Store their input in that real_name variable
real_name = gets.chomp
	#If they chose to quit and enter "q"
  if real_name == "q"
  	#Break or quit out of while loop
    break
   #Otherwise, if they keep entering a name
  else
  #Store the returned array from the method in a variable
  return_array = change_name(real_name)
  	#Print that variable to check if its giving the right information
  			#p return_array
  #End if statement
  end
  #Each time you iterate through, store their alias and name in a new hash
  #Since the key and values are always going to be the first two indicies of the 
  #returned array, push those into the hash
  alias_and_real_name[return_array[0]] = return_array[1]

#End while loop
end

#Now we'll take the hash that stored all the data for how ever long we were entering 
#names and iterate through each key value pair
alias_and_real_name.each do |alias_name, real_name|
  #Print out the statement
  puts "#{alias_name}'s real name is #{real_name}."
  #End do loop
  end
 








