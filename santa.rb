class Santa

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer",
			"Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		
	end

	def speak
		p "Ho, ho, ho! Haaaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie}!"
	end

	def celebrate_birthday
		new_age = @age + 1
		puts new_age
	end

	def get_mad_at(reindeer_name)
		p reindeer_name
		@reindeer_ranking.pop
		@reindeer_ranking.push(reindeer_name)
		p @reindeer_ranking
	end
end

santa = Santa.new("female","white")
santa.speak
santa.eat_milk_and_cookies("Chocolate chip")
santa.celebrate_birthday
santa.get_mad_at("Dancer")


years_attended_and_age = []
years_attended = ["3","2","1","5", "4", "8", "1"]
age_of_attendee = ["13", "35", "23", "16", "75", "52", "7"]
years_attended.length.times do |each_element|
	years_attended_and_age << Santa.new(years_attended[each_element], age_of_attendee[each_element])
end


santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end