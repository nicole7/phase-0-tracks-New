class Puppy

	def fetch_ball(toy)
		puts "I brought back the #{toy}"
		toy
	end

	def speak(num)
		num.times {puts "Woof"}
	end

	def roll_over
		"*roll over*"
	end

	def dog_years(num)
		num = 7 * num
		p "Dog years is #{num}"
	end

	def shake_paw(hand)
	hand = "Gives paw"
	return hand
end

end

puppy= Puppy.new
puppy.fetch_ball("ball")
puppy.speak(3)
puppy.roll_over
puppy.dog_years(5)
p puppy.shake_paw("Give hand")
