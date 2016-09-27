def start
	puts "You are in a dark room."
	puts "There is a door to your right and left."
	puts "Which one do you take?"

	print "> "
	choice = $stdin.gets.chomp

	if choice.upcase == "Left" || "L"
		bear_room
	elsif choice.upcase == "Right" || "R"
		cthulhu_room
	else
		dead("You stumble around the room until you starve.")
	end	
end

def bear_room
	puts "There is a bear here."
	puts "The bear has a bunch of honey."
	puts "The fat bear is in front of another door."
	puts "How are you going to move the bear?"
	puts "You're choices are take honey, taunt bear, or open door."

	bear_moved = false

	while true
		print "> "
		choice = $stdin.gets.chomp

		if choice.include?("honey") || choice.include?("take")
			dead("The bear looks at you then slaps your face off.")
		elsif choice.include?("taunt") && !bear_moved
			puts "The bear has moved from the door. You can go through it now."
			puts "Your choices are \"taunt bear\" or \"open door\"."
			bear_moved = true
		elsif choice.include?("taunt") && bear_moved
			dead("The bear gets pissed off and chews your leg off.")
		elsif choice.include?("open") || choice.include?("door") && bear_moved
			gold_room
		else
			puts "Learn to type."
		end
	end
end

def gold_room
	puts "This room is full of gold. How much do you take?"
	puts "Enter an integer."

	print "> "
	choice = $stdin.gets.chomp

	# if choice.include? "0" || choice.include? "1"
	# 	how_much = choice.to_i
	# else
	# 	dead("Man, learn to type a number.")
	# end

	if choice =~ /\A\d+\Z/
		if choice.to_i < 50
			puts "Nice, you have #{choice.to_i} gold; you're not greedy, you win!"
			exit(0)
		else
			dead("You greedy bastard!")
		end
	else
		dead("Man, learn to type an integer. You're dead.")
	end
end		
			
def cthulhu_room
	puts "Here you see the great evil Cthulhu."
	puts "He, it, whatever stares at you and you go insane."
	puts "Do you flee for your life or eat your head?"

	print "> "
	choice = $stdin.gets.chomp

	if choice.include? "flee"
		start
	elsif choice.include? "head"
		dead("Well, that was tasty!")
	else
		cthulhu_room
	end	
end

def dead(why)
	puts why, "Good job!"
	exit(0)
end

start

# a = "sdg"
# # puts a.to_i.is_a? Integer
# # puts a.integer?
# puts a.to_i
# puts Integer(a).integer?