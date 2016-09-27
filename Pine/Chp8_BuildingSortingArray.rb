# How I did it
puts "Enter some words"
arr = []

while true
	word = $stdin.gets.chomp
	arr << word
	break if word == ''
end

arr.pop()
p arr.sort



# ************************************************
# How I could've done it
puts 'Give me some words, and I will sort them:'
words = []

while true
	word = gets.chomp
	if word == ''
		break
	end

	words.push word
end

puts 'Sweet! Here they are, sorted:'
puts words.sort



# ************************************************
# How he did it
puts 'Give me some words, and I will sort them:'
words = []

while true
	word = gets.chomp
	break if word.empty?
	words << word
end

puts 'Sweet! Here they are, sorted:'
puts words.sort