# Problem 1
# sum = []
# (0...1000).each do |i|
# 	if i % 3 == 0 || i % 5 == 0
# 		sum << i
# 		puts i
# 	end
# end
# puts sum.inject(:+)
#####################################################
# Problem 2
# sumarr = []
# i = 1
# sum = 2

# loop do
# 	j = sum
# 	sum = sum + i
# 	i = j
# 	sumarr << i if i % 2 == 0
# 	break if sum > 4000000
# end
# puts sumarr.inject(:+)
#####################################################
# Problem 3
# require 'prime'
# i = 1
# n = 600851475143
# arr1 = []

# loop do
# 	primearr = Prime.take(i)
# 	e = i-1
# 	if n % primearr[e] == 0
# 		a = n / primearr[e]
# 		if Prime.prime?(a)
# 			arr1 << primearr[e] << a
# 			break
# 		else
# 			arr1 << primearr[e]
# 		end
# 		n = a
# 	end
# 	i += 1
# end
# puts arr1[-1]
#####################################################
# Problem 4
# arr = (100..999).to_a
# palinum = 0
# (100..999).each do |i|
# 	new_arr = arr.map { |x| x * i }
# 	new_arr.each do |num|
# 		if num.to_s == num.to_s.reverse
# 			palinum = num if num > palinum
# 		end
# 	end
# end
# puts palinum
#####################################################
# Problem 5
num = 2520
arr = (2..20).to_a.reverse
value = false

loop do
	arr.each do |i|
		if num % i == 0
			value = true
		else
			value = false
			break
		end
	end

	if value == true
		puts num
		break
	end
	num += 10
end
#####################################################
# Problem 6
sum_of_squares = (1..100).inject { |sum, n| sum + n**2 }
square_of_sum = ((1..100).inject { |sum, n| sum + n })**2

puts square_of_sum - sum_of_squares
#####################################################
# Problem 7
# require 'prime'
# a = Prime.take(10001)
# puts a[-1]
#####################################################
# Problem 8
arr = []
File.read("EulerProb8.txt").each_line do |i|
	arr << i.chomp
end

num_string_arr = arr.join.split(//)

element = 0
big_product = 0
num_string_arr.each do |i|
	small_product = num_string_arr[element..element + 12].inject(1) { |product, n| product * n.to_i }
	if small_product > big_product
		big_product = small_product
	end
	element += 1
end

puts big_product
#####################################################
# Problem 9
product = 0

1.upto(1000) do |a|
	(a + 1).upto(1000) do |b|
		c = 1000 - a - b
		if (a**2 + b**2 == c**2)
			puts a
			puts b
			puts c
			product = a * b * c
			puts product
		end
	end
	break if product > 0
end
#####################################################
# Problem 10
require 'prime'
require 'benchmark'
now_time = Time.now

puts Benchmark.measure {
	prime_arr = Prime.take_while { |p| p < 2000000 }

puts prime_arr.inject { |sum, n| sum + n }


}
end_time = Time.now
puts end_time - now_time
#####################################################
# Problem 12
require 'prime'
require 'benchmark'

puts Benchmark.measure{
i = 1
loop do
	# Calculating triangle number. Quicker than adding everything in (1..i)
	tri_num = i * (i+1) / 2

	# Getting number of factors (divisors) from a number. Find prime factors. 
	# Add 1 to all the powers of each prime factor and then multiply all the powers.
	# Use prime_division method from Prime class.
	prime_arr = tri_num.prime_division
	divisors = 1
	prime_arr.each do |element|
		divisors = divisors * (element[1] + 1)
	end

	if divisors > 500
		puts tri_num
		puts divisors
		break
	end

	i += 1
	
end
}
#####################################################
# Problem 13
arr = []

File.read("EulerProb13.txt").each_line do |i|
	arr << i.chomp.to_i
end

big_num = arr.inject { |sum, n| sum + n }

big_arr = big_num.to_s.split(//)
print big_arr[0..9]
#####################################################
# Problem 16
arr = (2**1000).to_s.split(//)

puts arr.inject { |sum, n| sum.to_i + n.to_i }
#####################################################
# Problem 48
total = 0
(1..1000).each do |i| 
	total = i**i + total
end

a = total.to_s.split('').map { |i| i.to_i }
print a[-10..-1]
#####################################################