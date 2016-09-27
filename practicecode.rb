class Box1
	def initialize(w, h)
		@width = w
		@height = h
		puts "The width is: " + @width.to_s
	end

end

box = Box1.new(nil,nil)
if box == nil
	puts "yay"
end
# p box