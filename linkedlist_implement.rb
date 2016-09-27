class Node
	attr_accessor :value, :next_node
	# getter :value
	# def value
	# 	@value
	# end
	# setter :value
	# def value=(val)
	# 	@value = val
	# end

	# getter :next_node
	# def next_node
	# 	@next_node
	# end
	# setter :next_node
	# def next_node=(val)
	# 	@next_node = val
	# end

	def initialize(val, next_in_line)
		@value = val
		@next_node = next_in_line
		puts "Initialized a Node with value: " + @value.to_s
	end

end

class LinkedList

	def initialize(val)
		# Initialize a new node at the head
		@head = Node.new(val, nil)
	end

	def add(val)
		current = @head
		# Traverse to the end of the list
		# And insert a new node with the specified value
		while current.next_node != nil
			current = current.next_node
		end
		current.next_node = Node.new(val, nil)
		# self
	end

	def delete(val)
		current = @head
		if current.value == val
			# If the head is the element to be deleted, the head needs to be updated
			@head = @head.next_node
		else
			# ... x -> y -> z
      # Suppose y is the value to be deleted, you need to reshape the above list to :
      #   ... x->z
      # ( and z is basically y.next_node )
			while (current.next_node != nil) && (current.next_node.value != val)
				current = current.next_node
			end
			unless current.next_node == nil
				current.next_node = current.next_node.next_node
			end
		end
	end

	# def return_list
	# 	elements = []
	# 	current = @head
	# 	while current.next_node != nil
	# 		elements << current
	# 		current = current.next_node
	# 	end
	# 	elements << current
	# end

end

LL1 = LinkedList.new(1)
LL1.add(6)

LL1.add(3)
LL1.add(2)

# p LL1.return_list
# LL1.delete(3)
LL1.delete(2)
p LL1