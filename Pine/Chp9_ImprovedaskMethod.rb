# How I could do it

def ask question
	while true
		puts question
		reply = gets.chomp.downcase
		
		if reply == 'yes'
			return true
		end
		if reply == 'no'
			return false
		end

		puts 'Please answer "yes" or "no".'
	end
end

likes_it = ask 'Do you like eating tacos?'
puts likes_it




# How he did it
def ask question
	while true
		puts question
		reply = gets.chomp.downcase
		
		return true if reply == 'yes'
		return false if reply == 'no'
		puts 'Please answer "yes" or "no".'
	end
end

puts ask "Do you like eating tacos?"