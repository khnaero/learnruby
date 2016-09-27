print "Please enter first word: "
word1 = $stdin.gets.chomp
print "Please enter second word: "
word2 = $stdin.gets.chomp

if word1.split(//).sort == word2.split(//).sort
	puts "Yay"
else
	puts "Boo"
end
