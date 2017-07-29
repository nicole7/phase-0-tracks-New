# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# 
#
#
require_relative 'state_data'

class VirusPredictor
  #Initializing the instance variable
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #Calls the other two methods, passes the instance variables as a arguments
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  #Anything below you cannot see...
  private
  #Calculation of instance variables through if statement to get the number of deaths
  #based on population density per state (then prints)
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  #Calculates the speed of deaths per state based on pop. density 
  #and then prints
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
#loop
STATE_DATA.each do |state_name, pop_hash|
  state = VirusPredictor.new(state_name, pop_hash[:population_density], pop_hash[:population])
  state.virus_effects
end


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects


#=======================================================================
# What are the differences between the two different hash syntaxes shown in the state_data file?
#==> States are keys and shown as strings. The value of this key are
#==>two keys that point to two different values. They both do the same thing
#==>but instead of the key being a string it's notation is key : value. It 
#==>works on keys that don't have spaces and doesn't print a user friendly string

#What does require_relative do? How is it different from require?
#==>It gives the path of the other file to this one essentially. It tells
#==>this file it will require something within the library/directory and
#==>instead of giving that path, relative gives a direct path and says its in this directory, here it 
#==> is 'file' - its related, in a sense

#What are some ways to iterate through a hash?
#==>You can iterate through a hash using the do loop with .each and use the index as a variable to pass through each
#==>key:value pair. Or you can just use .each and use key and value as variables and just print them out from there

#When refactoring virus_effects, what stood out to you about the variables, if anything?
#==>One of the biggest things that stood out was that it was taking arguments it didn't need to nor did it use. It also
#=>didn't need to pass the instance variables to the methods it was calling as they have a scope of the entire class.

#==>What concept did you most solidify in this challenge?
#==>Iteration and fully understanding how variables work in some contexts have been struggls of mine. I'm getting it, but I 
#==>have problems getting how to work with hashes (i.e. how to change the data within and how to get the data I want from it via iteration)