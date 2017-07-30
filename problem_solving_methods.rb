#Write a method that takes in an array of integers and an integer to search for
#The method should return the index of the item
#Don't use built-in methods like .index - can use .length and .each

def search_array(arr, num)
	#Declare index variable to store each iteration (will act as index)
	index = 0
	#Make do loop that iterates through array
	arr.each do |number| 
		#As it goes through each number, if the number is equal to the 
		#number in the argument we are looking for
		if number == num
			#Then break the loop
			break
		#End if loop
		end
		#Index will stop at the count where it left off if it breaks at the right number
		index += 1
	#End do loop
	end
	#Print out the number we are looking for and the index it stopped at when it 
	#found it
	p "#{num} is at index of #{index}"
#End method
end

#array
arr = [3, 65, 9, 10, 17, 24]
#Call to method, pass this array and a number to search for
search_array(arr, 10)

p ".............................."

#Create a Fibonacci method by starting off with 0 and 1
#Keep adding numbers onto the list by adding the previous two
#Array of 6 should look like: [0, 1, 1, 2, 3, 5]
#Each number in the array us the sum of the previous two numbers, except for the 
#0 and the 1
#Method will return an array

def create_fib(num)
	#Start with the first two numbers 0 and 1 and store in separate variables
	num1 = 0
	num2 = 1
	#Create an empty hash to later take in fibonacci numbers 
	fib_array = []

	#Use a counter to iterate through however many times depending on the argument
	index = 0
	#Use a while loop to iterate as long as it iterates "num" times
	while index < num
		#Use temp varibale to pass the variable between the two
		#Have it equal 0 at first - it will print this first
		temp = num1
		#Reassign num1 to 1 (num2's value), when it comes back to temp it 
		#will print this twice after
		num1 = num2
		#num2 is going to be adding the previous two variable values
		num2 = temp + num1
		#Temp is the variable we want to use in order to start with 0 instead of 1
		#Store each iteration value in the array
		fib_array << temp
		#Increase iteration each time
		index += 1
	#End while loop	
	end
	#Return array with fibonacci numbers
	fib_array
#End method
end

#Call and print return array for 11 iterations
p create_fib(11)

p "..............................."

#Create method for a bubble sort that takes in an array argument
#Create a while loop?
#Compare each value of the aray with its neighbor to the right
#If its nieghbor is a bigger value, switch their indicies and compare the neighbor with the next number
#If their neighbor is a smaller value, dont switch, but compare the neightbor with the next number
#Keep doing this until all numbers are sorted

def bubble_sort(arr)
	#Must make loop inside of loop
	loop do
	#sorted will be the marker of whether something is sorted, true or false
	sorted = false
	#This will iterate through the while loop
	index = 0
		#while loop will be used to switch the numbers needed or it will break out and 
		#allow for the next pair to come in
		#Use length - 1 so it doesnt sort the last value with something
		#thats actually outside the array
		#while index > arr.length - 1
		(arr.length - 1).times do |index|
			#if statement that compares if the first value is bigger than the next
			if arr[index] > arr[index + 1]
			#If it is, switch their index position
			arr[index], arr[index + 1] = arr[index + 1], arr[index]
			#Change sorted to true
			sorted = true
			#End if statement
		    end 
		#Incriment loop
		#index += 1
	#End while loop/second do loop
	    end
		#Break while loop if everything is sorted and coming up true
		break if not sorted
	#End do loop
	end
	#Return the sorted array
	arr
#End method 
end

arr_to_sort = [10, 3, 64, 2, 24, 19]
p bubble_sort(arr_to_sort)

