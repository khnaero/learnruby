# File.open("samplestory.txt").each_line("\n") do |line|
#   puts line
# end

lines = File.readlines("samplestory.txt")
text = lines.join

# paragraph_count = text.split("\.\r").length
# puts "#{paragraph_count} paragraphs."

# paragraph_count = text.split(/\r\n\r\n/).length
# puts "#{paragraph_count} paragraphs."

array_of_only_words = text.split.reject { |w| w !~ /([a-zA-Z]+(_[a-zA-Z]+)*)/ }
word_count = array_of_only_words.count

puts "#{word_count} words"
puts "#{array_of_only_words.uniq.count} unique words"

# puts "#{text.scan(/[^\.!?]+[\.!?]/).map(&:strip).count} sentences"