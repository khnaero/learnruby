# Find if one word is an anagram of another
print "Please enter first word: "
word1 = $stdin.gets.chomp
print "Please enter second word: "
word2 = $stdin.gets.chomp

if word1.downcase.split(//).sort == word2.downcase.split(//).sort
	puts "Yay"
else
	puts "Boo"
end
