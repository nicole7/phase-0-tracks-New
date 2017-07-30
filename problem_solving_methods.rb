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