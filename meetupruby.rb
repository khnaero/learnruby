class Toyota
	def initialize
		puts "I'm a vehicle!"
	end

	def speak
		puts "i can talk"
	end
end

class Truck < Toyota
	attr_accessor :model, :transaction

	def initialize(model, transmission)
		@model = model
		@transmission = transmission
	end

	def show
		puts @model
	end
end

class Car < Toyota
	def initialize(name, transmission)
	end

	index
end

a = Toyota.new()
b = Truck.new("Tundra", "AWD")
b.speak
puts b.model
puts b.show
b.model = "Tacoma"
puts b.show
puts b.model