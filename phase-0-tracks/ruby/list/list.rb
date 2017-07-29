	class TodoList
	def initialize(list)
		@list = list
	end

	def get_items
		 @list
	end

	def get_item
		@list[0]
	end

	def add_item(item)
		@list.push(item)
		return @list
	end

	def delete_item(item)
		@list.delete("mop")	
		return @list
		
	end

	
end
