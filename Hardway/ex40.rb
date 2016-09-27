# require "./mystuff.rb"

# MyStuff.apple()
# puts MyStuff::TANGERINE


# class MyStuff2
	
# 	def initialize()
# 		@tangerine = "And now a thousand years between"
# 	end

# 	def apple()
# 		puts "I AM CLASSY APPLES!"
# 	end

# 	def show()
# 		@tangerine
# 	end

# end

# thing = MyStuff2.new()
# thing.apple()
# puts thing.show()
# puts thing.tangerine

class Song

	def initialize(lyrics)
		@lyrics = lyrics
	end

	def sing_me_a_song()
		@lyrics.each {|line| puts line}
	end
end

happy_bday = Song.new(["Happy birthday to you",
						"I don't want to get sued",
						"So I'll stop right there"])

bulls_on_parade = Song.new(["They rally around tha family",
						"With pockets full of shells"])

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()

newlyric = ["asdfasdf"]
newsong = Song.new(newlyric)
newsong.sing_me_a_song()