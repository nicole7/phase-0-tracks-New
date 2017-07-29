# ## RELEASE 0 AND 1 - PUPPIES
# class Puppy
#   #fetch method
#   def fetch(toy)
#     p "I brought back the #{toy}"
#   end
  
#   #speak method
#   def speak
#     4.times{puts "Woof!"}
#   end
  
#   #roll over method
#   def roll_over
#     p "*rolls over*"
#   end
  
#   #dog years method
#   def dog_years(human_years)
#     p 7*(human_years)
#   end
  
#   #sit method
#   def sit
#     p "*sits*"
#   end
  
#   #initialize new Puppy
#   def initialize
#     puts "Initializing a new puppy instance"
#   end
  
# end

# #Initialize a new instance of a Puppy
# pepper = Puppy.new

# #Get new puppy to fetch a ball 
# pepper.fetch("ball")

# #Get new puppy to speak
# pepper.speak

# #Get puppy to roll over
# pepper.roll_over

# #Get puppy age in dog years
# pepper.dog_years(2)

# #Get puppy to sit
# pepper.sit

# #Run the Initializing instance
# Puppy.new

## RELEASE 2 - eSpark student

class Student
  #Initialize new student
  def initialize
    
  end
  
  #Takes in student test scores
  def test_scores(score)
    puts "Student scored an #{score}"
  end

end


 
jamal = Student.new
jamal.test_scores("A+")

student_array = []

while student_array.length < 50
  student_array << student = Student.new
end


 
student_array.each {|item| puts item.test_scores("A")}

student_array.each do
 while student_array.length < 5
 student_array << student = Student.new
 test_scores("A+")
 go_to_recess
 end
end



