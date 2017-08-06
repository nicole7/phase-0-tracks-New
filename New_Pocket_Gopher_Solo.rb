#Today we'll be modeling a Newsroom, complete with a budget and a full 
#staff of reporters. They each have special skills and they're all worth 
#the star power of their name!

#Release 1

#Create a class for a Newsroom.
#All Newsroom instances should have a name and a budget passed in on 
#creation. For instance, our name could be "CNN" and its budget might 
#be 300_000 (as an integer - if you've never seen underscores in an 
#integer, it's just a style of representing thousands. It doesn't change 
#anything.)
#
#The newsroom's name doesn't change but you should be able to read it 
#outside of the class. The budget does change, so it should be readable 
#and writable outside of the class.
#
#Test your class by instantiating a Newsroom with driver code.


#......................................................................
#Release 2

#We've got a newsroom and a budget - now its time to hire some reporters! 
#Create a reporters instance variable which can hold the reporter's name 
#and their list of skills. (Each reporter has multiple skills!) It should 
#be empty on creation.
#
#When we find a new reporter that we want, we'll need to save them in our 
#list. Create an instance method to add_reporter to our list. If the 
#reporter already exists in our list, we'll need to notify the user that 
#we can't hire them!
#
#Test your method by adding a few reporters in your driver code.


#.......................................................................
#Release 3
#
#This newsroom is starting to get crowded - we should probably figure out 
#when we've maxed out our budget. The first step to this is figuring out 
#each reporter's salary.
#
#Create an instance method that takes a person's name and calculates the 
#salary_for that name. Since reporters get paid on how big their name is 
#in the industry, let's be literal here and say that their salary is 
#$10,000 for every character in their name! (Note: spaces count as a 
#character!)
#
#Test your method by calculating the salary_for("Anderson Cooper") - he 
#should get 150000 if you've done it correctly.




#........................................................................
#Release 4
#
#Now its time to start figuring out how much we pay these reporters.
#
#Create an instance method that calculates the total_salaries of all 
#reporters by iterating through the list and using our salary_for method, 
#calculates the total amount of money we spend for the current reporters.
#
#Test your method by calculating your current total salaries - hint: 
#"Anderson Cooper", "Wolf Blitzer" and "Jim Acosta" together make $370,000.

class Newsroom
attr_reader :name
attr_accessor :budget

	def initialize(name, budget)
		@name = name
		@budget = budget
		@reporters = {}
	end

	def add_reporter(name, skills)
		if !@reporters.has_key?(name)
			@reporters[name] = skills
			 #puts "#{name} added"
		else
			puts "We can't hire them!"
		end
	end

	def salary_for(name)
		name.length * 10_000
	end

	def total_salaries
		total_salary = 0
		@reporters.each do |name, skills|
			total_salary += salary_for(name) 
		end
		total_salary
	end
end

newsroom = Newsroom.new("CNN", 300_000)
newsroom.add_reporter("Anderson       Cooper", ["politics", "economics", "grey hair"])
newsroom.add_reporter("Wolf Blitzer", ["politics", "moustache", "yelling"])
newsroom.add_reporter("Jim Acosta", ["politics", "smiling"])

puts newsroom.total_salaries
#........................................................................
#Release 5
#
#Now that we've done these calculation methods, it's time to bring it all 
#together into a method that can tell us if we can afford to hire a new 
#reporter.
#
#Create an instance method that takes a reporter's name, and returns true 
#if the newsroom has_budget? left to hire them, and false if the budget is 
#less than the total existing salaries plus the new reporter's salary.
#
#Test your code by adding some driver code to take some reporters and 
#figure out if you have budget to hire "Rachel Maddow". Hint: With 
#"Anderson Cooper" and "Wolf Blitzer" already on your team, you don't.


#......................................................................
#Release 6
#
#Let's refactor our add_reporter to use our has_budget? to make wise 
#hiring decisions.
#
#Change the add_reporter method to only add a reporter to our list when 
#we're sure we have enough budget for them. If has_budget? returns false,
#we need to tell the user that we can't afford them.
#
#Test that your refactors are deliberately not letting you hire more than
#your budget. For example, if you hire "Anderson Cooper" and "Wolf 
#Blitzer", you won't be able to hire "Christiane Amanpour" as well on a 
#$300,000 budget!


#.....................................................................
#Release 7
#
#Our newsroom is finally ready to start reporting the important news of 
#today! Let's build a way to friendly_print the newsroom's details! Print 
#out the name of the newsroom and then each of your reporters' skills, 
#like the following:
#
#Welcome to the CNN Newsroom!
#
#Your reporting team is:
#- Anderson Cooper, specializing in politics, economics, grey hair.
#- Wolf Blitzer, specializing in politics, moustaches, yelling.
#- Jim Acosta, specializing in economics, smiling.
#
#Thank you for watching! Good night!


#...................................................................
#Release 8
#
#Uh oh, our newsroom is very successful! We're getting so many stories 
#that we'll need to figure out which reporters should cover each story. 
#To simplify this, we'll just use a skill name to stand in for a "story".
#For example, we'll need to figure out which of our reporters have the 
#skill "politics".
#
#Create an instance method that takes a skill name, and 
#find_reporters_with_skill for that skill. Remember, multiple reporters 
#can have the same skills, so your method should return a list of 
#reporters.


#...................................................................
#Bonus release!
#
#Your reporters want to branch out and develop new skills and specialties.
#
#Create an instance method that takes a reporter's name and the new skill
#they've learned, and add it to that reporter's skill in your reporters 
#data structure.


