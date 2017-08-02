class Puppy

	def initialize
		p "Initializing new puppy instance..."
	end

	def fetch_ball(toy)
		p "I brought back the #{toy}"
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

puts "............................."

class Student
	def initialize
	end

	def study(material)
		"*studying #{material}*"
	end

	def write_papers(num)
		"writing #{num} papers for this class"
	end
end

student = Student.new
student.study("literature")
student.write_papers(5)

lit_class = []
50.times do 
	lit_class.push(student = Student.new)
end

lit_class.each do |student|
	p "#{student} is #{student.study("literature")}"
	p "and #{student} is #{student.write_papers(5)}"
end










