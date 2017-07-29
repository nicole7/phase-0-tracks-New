array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# using .each

puts "Before:"
array.each do |array|
    puts array
end

puts "After"
array.each do |array|
    puts 2*array
end

# using .map

puts "Before:"
array.map {|i| i}
p array

puts "After"
array.map! {|i| 2*i}
p array

#############################

hash = {
    'bird' => 'swallow',
    'mammal' => 'rhino',
    'amphibian' => 'frog',
    'insect' => 'stag beetle'
}

# using .each

puts "Some creatures:"
hash.each do |i,j|
	puts "One example of a #{i} is a #{j}"
end

puts "Only animals:"
hash.each do |i,j|
	puts "One example of a #{i} is a #{j}"
end

puts "More excitement:"
hash.each do |i,j| j.upcase!
	puts "One example of a #{i} is a #{j}"
end

#############################

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p array

# iterate thru, delete matches
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p array.delete_if {|i| i < 5} 

# filter thru, keep matches
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p array.keep_if {|i| i < 5} 

# filter thru, keep matches
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p array.select {|i| i.even?}

# remove items until false
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p array.drop_while {|i| i < 5}

#############################

hash = {1 => 'apples', 2 => 'bananas', 3 => 'cat'}
puts hash

# iterate thru, delete matches
hash = {1 => 'apples', 2 => 'bananas', 3 => 'cat'}
hash.delete_if {|i, j| i == 1}
puts hash

# filter thru, keep matches
hash = {1 => 'apples', 2 => 'bananas', 3 => 'cat'}
hash.keep_if {|i, j| i == 1}
puts hash

# filter thru, keep matches
hash = {1 => 'apples', 2 => 'bananas', 3 => 'cat'}
hash.select! {|i, j| j.include? 'p'}
puts hash

# remove items until false
hash = {1 => 'apples', 2 => 'bananas', 3 => 'cat'}
p hash.drop_while {|i, j| j.include? 's'}


