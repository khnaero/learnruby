# Recursive Factorial
def factorial num
  if num < 0
    "No negatives!"
  elsif num <= 1
    1
  else
    num * factorial(num - 1)
  end
end

print "Enter number: "
number = $stdin.gets.chomp.to_i
puts factorial(number)


# # Non recursive version
# print "Enter number: "
# n = $stdin.gets.chomp.to_i

# i = 1
# fac = n
# if n < 0
#   puts "No negatives"
# elsif n <= 1
#   fac = 1
# else
#   while n > i
#     fac = fac * (n - i)
#     i += 1
#   end
# end

# puts fac if fac >= 0