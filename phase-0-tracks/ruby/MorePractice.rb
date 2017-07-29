input = ""

counter = 0
while input != "done"
num_sym_str = "0123456789+-*/"

p "What calculation would you like to perform? Enter 'done' when finished"
	input = gets.chomp
	

if !num_sym_str.include?(input)
			p "Please enter a valid calculation to perform"
elsif 

else input == "done"
	break

end

counter +=1 
end

