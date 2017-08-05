#module Shout
	#def self.yell_angrily(words)
		#words = "!!!" + " :("
	#end
	#def self.yelling_happily(words)
		#words = "!!!" + " :D"
	#end
#end

#p Shout.yell_angrily("GAHHH")
#p Shout.yelling_happily("Hooray")

module Shout
	def yelling(who)
		p "Finally, #{who} got it!"
	end
end

class Student
	include Shout
end

class Sports_fan
	include Shout
end

student = Student.new
student.yelling("I")

sports_fan = Sports_fan.new
sports_fan.yelling("this team")

