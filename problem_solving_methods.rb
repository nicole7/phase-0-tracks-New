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
	num1 = 0
	num2 = 1
	fib_array = []
	
	index = 0
	while index <= num
		temp = num1
		num1 = num2
		num2 = temp + num1
		fib_array << num1
		index += 1
	end
	fib_array
end

p create_fib(11)