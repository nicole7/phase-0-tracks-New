 #Method for Fibonacci Numbers
#Define method and pass parameter that will be the number of fib digits to display
 def fibonacci(fib)
 	#Set a variable to 0
	value1 = 0 
	#Set a variable to 1 (array must start with 0, 1...)
	value2 = 1
		#For the number of digits it will be, loop do this many times
		fib.times do 
			#Create a temp to store value1
  			temp = value1
  			#Make value1 equal value2
  			#This will help when printing out 0,1,1.. in the beginning
  			value1 = value2
  			#Make value2 equal the sum of temp and value2
  			#This will add the last numbers to get the next number
  			value2 = temp + value2
  		#End do loop
		end
	#Return the first value
  	value1
#End of method
end

#Create variable to store method call and pass argument of 6
#Will print 6 fibonacci numbers
var = fibonacci(6)
#Separate the values by creating an array in a loopto store all passed values
#Use var variable to pass a certain of times it will print 
var.times do |fib| 
  #Create empty array to store fib numbers
  fib_array = []
  #Call the method and pass each iteration through to store in array
  fib_array << fibonacci(fib)
  #Print the array
  puts fib_array
#End loop
 end

#Visual output
#temp 0
#Two 1
#temp 1
#One 1
#Two 2
#temp 1
#One 2
#Two 3
#temp 2
#One 3
#Two 5
#temp 3
#One 5
#Two 8
#temp 5
#One 8
#Two 13

##################################
#Method for Bubble Sort - pass the array as a parameter
def bubble_sort(array)
  #Create a do loop to iterate through the loop
  loop do
  	#Make a variable called switch that will switch the numbers as you sort
  	#Set it to false, it will become true if the numbers are not in the right place
    switch = false
    #MAke a loop inside the other loop
    #The length of the array - 1 (To catch last two values as you go through), iterate this many times 
    (array.length-1).times do |i|
      #If the array at the first index is greater value than the one on front of it
      if array[i] > array[i+1]
      	#Then it equals one placeholder/index in front/next index spot
      	#It's a larger number and needs to swap
        array[i], array[i+1] = array[i+1], array[i]
        #Set switch to true
        switch = true
      #End if statement
      end
    end
    #Break this iteration and go back in line, iterating through if not  - switch is false
    break if not switch
  end
  #Return the sorted array
  array
 #End method
end

#Array list
array_list = [19,25,1,34,3,9,12]
#Call the Bubble sort method and pass the array as an argument
bubble_sort(array_list)

###########################################
#Create method for search and pass parameters for an array and the number you are searching for
def search_array(array, find_num)
	#Use a counter to iterate through the array
  	counter = 0
  		#While loop that iterates through as long as the counter doesnt equal or exceed the length of the array
		while (counter < array.length)
			#If the array at a given counter equal the number your are searching for
  			if array[counter] == find_num
  			#Print the counter
  			#This will show the count, starting with 0, what number (index) it hold in th array
  			p counter
  			#End if statement
  			end
  			#Set the counter to add to increment by 1 each time
  			counter += 1
  		#End the while loop	
  		end
#End the method  
end

#Create array
arr = [42, 89, 23, 1]
#Call method and pass as arguments the array and the number you want to find
search_array(arr, 1)

