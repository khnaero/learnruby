# def Roll(num_sides)
# 	puts (1..num_sides).to_a.sample
# end

# print "Enter number of sides:"
# sides = $stdin.gets.chomp.to_i
# print "Enter number of rolls:"
# rolls = $stdin.gets.chomp.to_i

# i = 0
# while i < rolls
# 	Roll(sides)
# 	i += 1
# end

###################################

# print "Enter number of sides: "
# sides = $stdin.gets.chomp.to_i
# print "Enter number of rolls: "
# rolls = $stdin.gets.chomp.to_i

# i = 0
# while i < rolls
# 	puts rand(sides) + 1
# 	i += 1
# end

###################################

# print "Enter number of sides: "
# sides = $stdin.gets.chomp.to_i
# print "Enter number of rolls: "
# rolls = $stdin.gets.chomp.to_i

# i = 0
# while i < rolls
# 	puts rand(1..sides)
# 	i += 1
# end

###################################

class Die

	def roll
		puts rand(1..6)
	end

end

rolldie = Die.new

rolldie.roll
