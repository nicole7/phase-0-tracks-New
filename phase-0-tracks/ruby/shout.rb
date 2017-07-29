#module Shout
 # def self.yell_angrily(words)
  #  words + "!!!" + " :("
  #end
  #def self.yell_happily(more_words)
  #	more_words + "!!!" + " :)"
  #end
#end


#p Shout.yell_angrily("GAHHHHHH")
#p Shout.yell_happily("YAAAAAAAAY")


module Shout
	def shout_method(shout_parameter)
		puts "It's morning and #{shout_parameter}"
	end
end

class Student
	include Shout
end

class Alarm_clock
	include Shout
end



student = Student.new
student.shout_method("I want to sleep in!!")

alarm_clock = Alarm_clock.new
alarm_clock.shout_method("you need to get up!!")

