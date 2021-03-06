# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array using #each,
# printing each item in the array separated by an asterisk

zombie_apocalypse_supplies.each {|supplies| print "#{supplies}*" }
	#p "#{supplies} *"
	#How to get it all on one line?
	
#end



# 2. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies using #each.
# For instance: are boots in your list of supplies?
def find_item(array_list, item)
    p "Does our pack include #{item}?"
    check = false
    array_list.each do |supplies|
        if supplies == item
            puts "Does include #{item}"
            check = true
        end 

    end
    if false
        puts "Does not include #{item}"
    end
    #Don't put this inside the do loop or it will print EVERYTIME its false
    #if !array_list.include?(item)
       # puts "It does not include #{item}"
    #end
end

find_item(zombie_apocalypse_supplies, "rations")
find_item(zombie_apocalypse_supplies, "top hat")


# 3. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5, using #each.
zombie_apocalypse_supplies.each do |supplies|
	if !(supplies.start_with?("s") || supplies.end_with?("s"))
		p supplies
	end
    
end

# 4. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
new_pack = other_survivor_supplies + zombie_apocalypse_supplies
new_pack = new_pack.uniq
p new_pack

# Hash Drills

extinct_animals = {
  "Passenger Pigeon" => 1914,
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash using #each, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
extinct_animals.each {|animal, year| p "#{animal} * #{year}"}



# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000, using #each.

p "Extinct before 2000:"
extinct_animals.each do |animal, year|
    if year < 2000
        puts "#{animal} - #{year}"
    end
end


# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# using #each, so they accurately reflect what year the animal went extinct.

#extinct_animals.each {|animal, year| extinct_animals[animal] = year + 3}
extinct_animals.each do |animal, year|
	puts "#{animal} #{extinct_animals[animal] = year - 3}"

end


# 4. You've heard that the following animals might be extinct, but you're not sure.
# Build a method  using #each that checks if an animal is in the hash and returns true/false.
# Call the method in your driver code with each of the following animals to check if
# they are extinct or not:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Driver code example: is_extinct?(extinct_animals, "Andean Cat")
 def check_extinction(animal_array, new_animal)
    not_extinct = true
    animal_array.each do |animal, year| 
        if animal == new_animal
            puts "False, #{new_animal} is not extinct"
            not_extinct = false
        end
    end
        if not_extinct 
         puts "True, #{new_animal} is extinct" 
     	end
     
end

check_extinction(extinct_animals, "Andean Cat")
check_extinction(extinct_animals, "Dodo")
check_extinction(extinct_animals, "Saiga Antelope")



# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find a Ruby Hash built-in method that helps you accomplish this or build
# your own method using #each
extinct_animals.each do |animal, year|
	if animal == "Passenger Pigeon"
		puts "#{animal} - #{extinct_animals.delete(animal)}"
	end

end