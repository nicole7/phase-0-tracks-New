#Create a method that take an argument of a certain word
#Create another array with letters A - Z and have another program choose random letters to guess
#Create a placeholder string that using "_" based on the length of the word
#For each letter that is right, enter in that letter in the placeholder and print it out
#If they guess wrong, give another try
#Once the word is complete, congratulate them 

#Classname
class Hangman
    #Getter method for word
    attr_reader :word 
    #initialize method that declares and initializes instance variables
    #Passes in word arguement   
    #Also create array for placeholder 
    def initialize(word)
        #Declare word and initialize the value to the word argument
        @word = word
        #Declare alpha string and then show it as an array
        @alpha = "abcdefghijklmnopqrstuvwxyz".chars
        #Declare placeholder and store in it, a new array of word using map (and chars) with "_"
        @placeholder = word.chars.map { "_" }
    #end method
    end
    #Create method to join placeholder (as a string?)
    def placeholder
        #Method join on placeholder
        @placeholder.join
    #End method
    end
    #Create method to get random letter
    def rand_letter
        #Sample will chose a random value from the array and return it
        @alpha.sample 
    #End method
    end
    #Create method to test the word
    #Pass the random letter
    def test_word(character)
        #Once the character is passed through, delete it as we dont want to use it again
        @alpha.delete(character)
        #If the word includes this charater, store it in variable, correct
        correct = word.include?(character)
        #Iterate through each value of word as an array
        #Item will equal the letter and index will equal the index (per using each_with-index)
        word.chars.each_with_index do |item, index| # item = "p", index = 0
            #The index from word that matches within placeholder, should equal the random 
            #character if the character is equal to the item from word
            @placeholder[index] = character if character == item 
        #End method
        end
        #Return correct
        correct
    #End method
    end
    #Test if game should be over (use ?)
    def is_over?
        #Returns true if placeholder doesnt equal "_"
        !@placeholder.include?("_")
    #End method
    end
#End class
end

#Print welcome message
p "Welcome to the hangman game"
#Create instance of and object
hangman = Hangman.new("peanut")
#Print the placeholder to start
p hangman.placeholder
#Start test with message
p "Let's see if there was a match: "

#Create while loop where it keeps iterating if the is_over? method is still false
while !hangman.is_over?
    #Print message for guessed letter
    p "Guessed letter: "
    #Store method call in variable
    rand_letter = hangman.rand_letter
    #Print variable return for random letter
    p rand_letter
    #If statement for testing the random letter generated and passing to 
    #appropriate method
    if hangman.test_word(rand_letter)
        #Print out it's a match if it is
        p "It's a match!"
    #Otherwise
    else
        #Print message that its no match
        p "No match. Try again"
    #End if statement
    end
    #Print the placeholder each time to show it updated or what it
    #currently is at
    p hangman.placeholder
#End while loop
end
