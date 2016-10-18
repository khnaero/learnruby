class Box1
	
	# Constructor
	def initialize(w, h)
		@width = w
		@height = h
	end

	# Getters
	def dispWidth
		@width
	end

	def dispHeight
		@height
	end

end

box1 = Box1.new(10, 20)
# puts box1.dispWidth
# puts box1.dispHeight

class Box2
	
	# Setters or attr_writer
	def setWidth=(w)
		@width = w	
	end

	def setHeight=(h)
		@height = h
	end

	# Getters or attr_reader
	def dispWidth
		@width
	end

	def dispHeight
		@height
	end

end

box2 = Box2.new
box2.setWidth = 15
box2.setHeight = 25
# puts box2.dispWidth
# puts box2.dispHeight


class Animal
	def noise=(noise)
		@noise = noise
	end

	def noise
		@noise
	end

end

animal1 = Animal.new
animal1.noise = "Moo"
puts animal1.noise
