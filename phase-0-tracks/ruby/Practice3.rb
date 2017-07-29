class Santa
  attr_accessor :age, :ethnicity, :reindeer_ranking, :gender

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 28
		@years_attended = 0

		#p "Initializing Santa instance..."
	end

	def speak
		p "Ho, ho ,ho! Haaaappy Holidays!"
	end

	def eat_milk_and_cookies(cookies_type)
		p "That was a good #{cookies_type}!"
	end

	def about
		p "Gender is #{@gender} and ethnicity is #{@ethnicity}"
	end

end
  

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

rand_num = Random.new
rand_index = rand_num.rand(0...7)

p example_genders[rand_index]
p example_ethnicities[rand_index]


