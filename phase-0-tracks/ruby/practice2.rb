def search_array(array, find_num)
	
  		
 

 	
  array.each do |num|
  	counter = 0
		while (counter < array.length)
  			new_array = []
			new_array << counter
    		#counter += 1
    				if num == find_num
    					new_index = new_array[counter]
    					#[counter](array[counter])
    					#new_index[counter] = new_array[new_index]
    					p new_index
    					p new_array
    				#else 
    					#p nil
    				end

  		end
  		counter += 1

  end



end



arr = [42, 89, 23, 1]
search_array(arr, 1)