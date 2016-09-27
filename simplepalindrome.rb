print 'Enter word: '
word1 = $stdin.gets.chomp
word2 = word1.reverse

if word1 == word2
	puts 'Yes'
else
	puts 'No'
end


# first try
# filename = ARGV[0]

# txtarr = File.readlines(filename)

# txtarr.each do |line|
# 	if line.chomp == line.chomp.reverse
# 		puts line
# 	end
# end


# second try
# Why don't I need to open the file first??
filename = ARGV[0]

File.read(filename).each_line do |line|
	if line.chomp == line.chomp.reverse
		puts line
	end
end