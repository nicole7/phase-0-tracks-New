#Pseudocode:
# Create an empty hash
#Ash user for input on various subjects which will act as keys to the hash
#Collect the input values for each key of the hash
#Ask user if they want to re-enter a previous key, if they type one in, update this, if they type 'none', exit
#Print the hash with the answers given



#Create method that will fill a hash with answers to a key and then change a value
def designer_method
	#Create an empty hash
	designer_hash = {}
		
	#Ask the user for their name
		puts "What is your name?"
		#Store their answer in the variable name
		name = gets.chomp
		#Take name and put as value inside (and create) the key Name in the hash
		designer_hash["Name"] = name
		#Ask for name
		puts "What is your age?"
		#Put input in age - change to explicit take of integer
		age = gets.to_i
		#Take input and put as value in another created key called Age
		designer_hash["Age"] = age
		#Ask user how many children they have 
		puts "How many children do you have?"
		#Get integer input
		num_child = gets.to_i
		#Store input in the value of the key Number of Children of hash
		designer_hash["Number of Children"] = num_child
		#Ask user their favorite decor theme
		puts "What is your favroite decor theme?"
		#Store in variable that now takes explicit string 
		decor_theme = gets.chomp
		#Store input in value for key Decor theme
		designer_hash["Decor Theme"] = decor_theme
		#Ask user yes or no answer
		puts "Have you been doing this a long time? ('Yes' or 'No')"
		#Take in input if completely correct and
		time = gets.chomp
			#Test if "Yes"
			if time == "Yes"
				#make it equal to true
				time = true
			#Otherwise
			else
				#It will equal false (because most likely no)
				time = false
			#End if statement
			end
			#Add time value true or false to the key, Time
			designer_hash["Time"] = time
	#Return the newly filled hash		
	 designer_hash
#End method	
end

#Create a method that will ask if they want to update previous input
def designer_update(hash_name)
	#Ask the user which category they want to modify and with what new answer
	puts "Would you like update one of these categories? (Enter 'none' if no changes"
	#Get input 
	input = gets.chomp
		#If they type none then 
		if input == 'none'
			#just print the hash as is
			p designer_hash
		#Otherwise if input was a key, ask what they would like to updated the value to
		else puts "Please enter your new answer"
			#Take their input
			 update = gets.chomp

			 #Enter the key they chose within the hash and have the key now equal their updated value
			hash_name[input] = update
		#End if statement
		end
		#Print this hash whether updated or not
		p hash_name
#End method
end

#Set a variable to store the method that created and returned the hash
get_hash = designer_method
#Call variable to print the hash created in this method
p get_hash
#Call method to ask user if they want to change hash by passing the new hash variable as an argument through it
designer_update(get_hash)