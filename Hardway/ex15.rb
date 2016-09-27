filename = ARGV[0]

txt = open(filename)

puts "Here's your file #{filename}:"
puts txt.read

# print "Type the file name again: "
# #file_again = $stdin.gets.chomp

# # txt_again = open(file_again)

# # print txt_again.read
# print open(file_again).read
# #close(file_again)