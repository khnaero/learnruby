first, second, third = ARGV # where ARGV is the "argument variable"
# put these arguments in bash like so: ruby ex13.rb first 2nd 3rd

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"
ARGV.clear
print "Please type in some more arguments: "
fourth = gets.chomp
puts "Your fourth variable is: #{fourth}"