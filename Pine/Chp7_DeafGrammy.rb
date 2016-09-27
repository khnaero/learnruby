# How I did it
gone = 0

while true
	me = $stdin.gets.chomp
	
	if me == "BYE"
		gone += 1
		break if gone == 3
	elsif me == me.upcase
		puts "NO, NOT SINCE #{rand(1930..1950)}"
		gone = 0
	else
		puts "HUH? SPEAK UP, SONNY!"
		gone = 0
	end
end

# How I could've done it
bye_count = 0

while true
	said = gets.chomp
	
	if said == 'BYE'
		bye_count = bye_count + 1
	else
		bye_count = 0
	end

	if bye_count >= 3
		puts 'BYE-BYE CUPCAKE!'
		break
	end

	if said != said.upcase
		puts 'HUH?! SPEAK UP, SONNY!'
	else
		random_year = 1930 + rand(21)
		puts 'NO, NOT SINCE ' + random_year.to_s + '!'
	end
end

# How he did it
bye_count = 0

while true
	said = gets.chomp
	
	if said == 'BYE'
		bye_count += 1
	else
		bye_count = 0
	end
	break if bye_count >= 3

	response = if said != said.upcase
		'HUH?! SPEAK UP, SONNY!'
	else
		"NO, NOT SINCE #{rand(1930..1950)}!"
	end
	
	puts response
end

puts 'BYE-BYE CUPCAKE!'