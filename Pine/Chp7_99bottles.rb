# number_of_beer = 5
# while true
# 	puts "#{number_of_beer} bottles of beer. #{number_of_beer - 1} beer."
# 	if number_of_beer == 2
# 		number_of_beer -= 1
# 		break
# 	end
# 	number_of_beer -= 1
# end

# puts "#{number_of_beer} bottle of beer."
# puts "No more bottles of beer."


num_at_start = 5 # change to 99 if you want

num_bot = proc { |n| "#{n} bottle#{n == 1 ? '' : 's'}" }

num_at_start.downto(2) do |num|
	puts "#{num_bot[num]} of beer on the wall, #{num_bot[num]} of beer!"
	puts "Take one down, pass it around, #{num_bot[num-1]} of beer on the wall!"
end

puts "#{num_bot[1]} of beer on the wall, #{num_bot[1]} of beer!"
puts "Take one down, pass it around, no more bottles of beer on the wall!"