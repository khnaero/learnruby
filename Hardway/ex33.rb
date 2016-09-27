# i = 0
# numbers = []

# while i < 6
# 	puts "At the top i is #{i}"
# 	numbers.push(i)

# 	i += 1
# 	puts "Numbers now: ", numbers
# 	puts "At the bottom i is #{i}"
# end

# puts "The numbers: "

# # remember you can write this 2 other ways?
# numbers.each { |num| puts num }

def whileloop(startingnum, maxnum, increment)
	i = startingnum
	numbers = []
	while i < maxnum
		puts "At the top is i is #{i}"
		numbers.push(i)

		i += increment
		puts "Numbers now: ", numbers
		puts "At the bottom i is #{i}"
	end

	puts "The numbers: "
	numbers.each { |num| puts num }
	puts

end

whileloop(0, 6, 2)

(0..6).each do |i|
	puts i
end
