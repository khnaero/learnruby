word_scramble = "hustia"
letter_count = word_scramble.split(//).count

word_arr = word_scramble.split(//)

# list = []
# File.open('words_alpha.txt', 'r').each_line do |word|
#   if word.chomp.split(//).count == letter_count
#     list << word.chomp
#   end
# end

# list.each do |word|
#   counter = 0
#   while counter < letter_count
#     if word.include?(word_arr[counter])
#       counter += 1
#       puts word if counter == letter_count
#     else
#       break
#     end
#   end
# end

catch (:done) do
  File.open('words_alpha.txt', 'r').each_line do |word|
    if word.chomp.split(//).count == letter_count
      counter = 0
      while counter < letter_count
        if word.include?(word_arr[counter])
          counter += 1
          if counter == letter_count
            puts word
            throw :done # use catch/throw to break out of outer loop early when answer found
          end
        else
          break
        end
      end
    end
  end
end
