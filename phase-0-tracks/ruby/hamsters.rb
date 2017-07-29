puts "What is the hamster's name?"
name_hamster=gets.chomp
puts "From 1 - 10 how loud are they?"
volume=gets.to_i
puts "What is their fur color?"
fur=gets.chomp
puts "Are they a good canditate for adoption?"
adoptable=gets.chomp
puts "How old are they?"
age=gets.to_i
if age == nil
	age = nil
end

puts "The name is #{name_hamster}. The volume level of the hamster is
#{volume} and their fur color #{fur}. #{adoptable} to adoption. They are
#{age} years old"
p