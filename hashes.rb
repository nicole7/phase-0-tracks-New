#Pseudocode:
# Create an empty hash
#Ask user for input on various subjects 
#Collect the input values, create a key name and make their input equal to the hash's value
#Ask user if they want to re-enter a previous key, if they type one in, use 
#an if/else statement and update user input, if they type 'none', exit if/statment
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
		#Ask for their age
		puts "What is your age?"
		#Put input in age - change to explicit take of integer
		age = gets.to_i
		#Take input and put as value in another created key called Age
		designer_hash["Age"] = age
		#Ask user how many children they have 
		puts "How many children do you have?"
		#Store the number they use in variable and explicit to change to integer
		num_child = gets.to_i
		#Store input in the value of the key Number of Children of hash
		designer_hash["Number of Children"] = num_child
		#Ask user their favorite decor theme
		puts "What is your favroite decor theme?"
		#Store in variable that now takes implicit string 
		decor_theme = gets.chomp
		#Store input in value for key Decor theme
		designer_hash["Decor Theme"] = decor_theme
		#Ask user yes or no answer for how long they've been doing this
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


#Release 1
#The filled out version will have the catgories for questions as keys and user's answer for the value
#designer_hash = {
 # "Name" => "Nicole",
  #"Address" => "1719 W Glenlake Ave",
  #"Email" => "nicole.gasperini88@gmail.com",
  #"Phone" => "603-696-8210",
  #"Fave Shade of Blue" => "Baby Blue",
  #"Walpaper preferences" => [
    #"Paisley", "Chevrons"
    #],
    #"Ombre is" => [
     # "So last season", "Practically medieval in its appalling irrelevance"
     # ]
#}

#designer_hash["Name"] = "NotNicole"
#p designer_hash
	#Treat like array!!
#designer_hash["Ombre is"].push("Fierce") 
#p designer_hash
#designer_hash["Walpaper preferences"].delete("Paisley")
#p designer_hash

#designer_hash["Hired?"] = "true"


	#If you store one of your variables as a key it create a new key 
#p designer_hash["Chevrons"] = "Walpaper preferences"
#p designer_hash

#designer_hash["Baby Blue"] #Trying to put value as key gives NIL
	#This will put them together: "NotNicole1719 W Glenlake Ave"
#p designer_hash["Name"] + designer_hash["Address"]