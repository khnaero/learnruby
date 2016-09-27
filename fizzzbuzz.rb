# (1..100).each do |i|
# 	if i % 5 == 0 && i % 3 == 0
# 		puts "FBuzz"
# 	elsif i % 3 == 0
# 		puts "Fizz"
# 	elsif i % 5 == 0
# 		puts "Buzz"
# 	else
# 		puts i
# 	end
# end

# (1..100).each do |i|
# 	if i % 5 != 0 && i % 3 != 0; puts i
# 	else
# 		if i % 3 == 0
# 			print "Fizz"
# 		end
# 		if i % 5 == 0
# 			print "Buzz"
# 		end
# 		puts "\n"
# 	end
# end

(1..100).each do |i|
	if i % 5 == 0 && i % 3 == 0; puts "FizzBuzz"
	elsif i % 3 == 0; puts "Fizz"
	elsif i % 5 == 0; puts "Buzz"
	else; puts i
	end
end