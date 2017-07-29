p "What is your name?"
name = gets.chomp

p "How old are you?"
age = gets.chomp.to_i

p "Do you like garlic bread? (Yes or No)"
eat_garlic_bread = gets.chomp
	if eat_garlic_bread == "Yes"
	   eat_garlic_bread = True
	else eat_garlic_bread = False
	end

p "Would you like to enroll in our insurance program? (Yes or No)"
insurance = gets.chomp
	if insurance == "Yes"
		insurance = True
	else insurance = False
	end

if age < 100 && eat_garlic_bread 
	p"Probably not a vampire"
elsif age >= 100 && !(eat_garlic_bread || insurance)
	p "Probably a vampire"
elsif age >= 100 & !(eat_garlic_bread && insurance)
	p "Almost certainly a vampire"
elsif name == "Drake Cula" || "Tu Fang"
	p "Definitly a vampire"
else
	"Result inconclusive"
end



puts "How many employees are there?"
emp_total = gets.to_i

i = 1

while i <= emp_total
puts "What's the employee's name"
name = gets.chomp
puts "What are your allergies?"
allergies = gets.chomp

  if allergies == "sunshine" 
    puts "Probably a vampire"
  end
i += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends." 
