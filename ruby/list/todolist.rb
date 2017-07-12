class TodoList

	attr_accessor :get_items

	def initialize(initial)
		@get_items = initial
	end

	def add_item(item)
		@get_items << item
	end

	def delete_item(item)
		@get_items.delete(item)
	end

	def get_item(index)
		@get_items[index]
	end
end
