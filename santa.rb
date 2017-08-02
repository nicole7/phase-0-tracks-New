class Santa

	def initialize
	end

	def speak
		p "Ho, ho, ho! Haaaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie}!"
	end
end

santa = Santa.new
santa.speak
santa.eat_milk_and_cookies("Chocolate chip")
