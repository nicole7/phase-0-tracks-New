#Create a class called Santa
class Santa
#Shortcut for getter and setter for following attributes
#Getter = attr_reader and Getter & Setter is attr_accessor (typically the later used to cover both)
attr_accessor :age, :ethnicity, :reindeer_ranking, :gender
	#Initialize method to take in two parameters for attributes and others to be set
	def initialize(gender, ethnicity)
		#Create attribute gender equal to the value of th argument passed in
		@gender = gender
		#Same with ethnicity 
		@ethnicity = ethnicity
		#Create attribute array of reindeer names
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		#Set age to 0. then to a number
		@age = 28
		#Create your own, using years attended to be changed later outside of class in an array
		@years_attended = 0

		#Print this to test, class will always look for this first. Prints first 
		#p "Initializing Santa instance..."

	#End Initialize method
	end
	#Create speak method to print
	def speak
		#Print
		p "Ho, ho ,ho! Haaaappy Holidays!"
	#End method
	end
	#Create method to take in argument for cookie type and then print it
	def eat_milk_and_cookies(cookies_type)
		#Print parameter
		p "That was a good #{cookies_type}!"
	#End method
	end
	#Create method that prints attributes gender and ethnicity 
	def about
		p "Gender is #{@gender} and ethnicity is #{@ethnicity}"
	#End method
	end

#Getter
	#def age
		#@age
	#end
	#def ethnicity
		#@ethnicity
	#end
	#def reindeer_ranking
		#@reindeer_ranking
	#end
	#def gender
		#@gender
	#end

#Setter
	#def celebrate_birthday=(new_age)
		#@age = new_age
	#end

	#def get_mad_at(reindeer_name)

		#@reindeer_ranking.delete(reindeer_name)
		#@reindeer_ranking.push(reindeer_name)
	#end
	#def gender=(new_gender)
		#@gender = new_gender
	#end

#End class
end

#Create instance of the Santa class and pass two arguments to the initialize method
santa = Santa.new("female", "American")
#Call the speak method
santa.speak
#Call the method that gives the cookie argument
santa.eat_milk_and_cookies("Snickerdoodle")
#Call the method that prints two attributes
santa.about

#Get reindeer_ranking attribute and delete one of the items
santa.reindeer_ranking.delete("Dasher")
#Add that item back to the array but at the end of the array
santa.reindeer_ranking.push("Dasher")
#Print the array with the new order
p santa.reindeer_ranking
#Print new gender for this attribute
p santa.gender = "Non-conforming"
#Set the new age
santa.age = "29"
#Print the new age by calling the ethod
p "#{santa.age}"

#One way to do an array
#santas = []
#santas << Santa.new("agender", "black")
#santas << Santa.new("female", "Latino")
#santas << Santa.new("bigender", "white")
#santas << Santa.new("male", "Japanese")
#santas << Santa.new("female", "prefer not to say")
#santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
#santas << Santa.new("N/A", "N/A")

#Better way to create an array database
#Create empty array
santas = []
#First list of item for gender
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
#Second list of items for ethnicities
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

#For the length of the gender array, do loop this many time and pass variables thru pipe
example_genders.length.times do |i|
  #Add to the santas array, new instance of both arrays passing each item like an index with i
  santas << Santa.new(example_genders[i], example_ethnicities[i])
#End do
end

#Create new empty array for ages and years attended
santas2 = []
#Age array
example_ages = [3,15,35,43,65,7,28]
#Array for years attended
example_years_attended = [5,1,2,2,3,5,1]

#Create do loop to pass items 
example_ages.length.times do |i|
	#Add in items from each array into new instance of santa
	santas2 << Santa.new(example_ages[i], example_years_attended[i])
#End do loop	
end

#Create new instance of Random class
rand_num = Random.new

#Call random method on this instance for numbers between 0 and 7 and store in variable to be the index
rand_index = rand_num.rand(0...7)

#Print the arrays with random index calls
p example_genders[rand_index]
p example_ethnicities[rand_index]

#Do the same for age 
rand_num2 = Random.new
rand_age = rand_num2.rand(1...140)
#Call age method instead of arrays and change the attribute
p santa.age = rand_age




