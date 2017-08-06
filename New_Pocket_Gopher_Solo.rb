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
			puts "#{name} added"
		else
			puts "We can't hire them!"
		end
	end
end

newsroom = Newsroom.new("CNN", 300_000)
newsroom.add_reporter("Anderson Cooper", ["politics", "economics", "grey hair"])
newsroom.add_reporter("Wolf Blitzer", ["politics", "moustache", "yelling"])
newsroom.add_reporter("Jim Acosta", ["politics", "smiling"])
#.......................................................................