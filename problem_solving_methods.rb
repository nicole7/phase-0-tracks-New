#Write a method that takes in an array of integers and an integer to search for
#The method should return the index of the item
#Don't use built-in methods like .index - can use .length and .each

def search_array(arr, num)
	length = arr.length
	index = 0
	arr.each do |number| 
		if number == num
			#p index
			break
		end
		index += 1
	end

	p "#{num} is at index of #{index}"
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

