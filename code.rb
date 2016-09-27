# a = "A"
# if a =~ /\A\d+\Z/
# 	puts a
# else
# 	puts "no go."
# end

# a = [1,2,3,4,5,6,7,8,9,10,11,12,13]
# hand1 = []

# abd = "happy"
# a = abd.hash
# b = a % 255
# puts a
# puts b

# a= [[1,2],[2],[3]]
# puts a.length

# iterator = (1..9).each
# iterator_two = (1..5).each

# loop do
#   puts iterator.next
#   puts iterator_two.next
# end

# def kaprekar(k)
# 	n = k.to_s.length
# 	squared = (k**2).to_s
# 	last = squared[-n..-1].to_i
# 	first = squared[-squared.length..-n-1].to_i
# 	puts first + last == k
# end

# kaprekar(9)

# def number_shuffle(number)
# 	digits = number.to_s.length
# 	num_comb = (1..digits).inject(1, :*)

# 	result_array = []
# 	result_array << number.to_s.split('').shuffle.join('').to_i while 
# result_array.uniq.length != num_comb
# 	p result_array.uniq.sort
# end

# number_shuffle(123)

# class Restaurant
# 	def initialize(menu)
# 		@menu = menu
# 	end

# 	def cost(*orders)
# 		orders.inject(0) do |total_cost, order|
#       total_cost + order.keys.inject(0) {|cost, key| cost + @menu[key]*order[key] }
#     end
# 	end
 
# end

# menu = Hash[:rice, 3, :noodles, 2]
# o1 = Hash[:rice, 1, :noodles, 1]
# o2 = Hash[:rice, 2, :noodles, 2]
# order = Restaurant.new(menu)
# p order.cost(o1, o2)


class Color
  attr_reader :r, :g, :b
  def r
  	@r 
  end

  def initialize(r, g, b)
    @r = r
    @g = g
    @b = b
  end

  def brightness_index
    (r*299 + g*587 + b*114) / 1000
  end

  def brightness_difference(another_color)
    (brightness_index - another_color.brightness_index).abs
  end

  def hue_difference(another_color)
    (r-another_color.r).abs +
    (g-another_color.g).abs +
    (b-another_color.b).abs
  end

  def enough_contrast?(another_color)
    brightness_difference(another_color) > 125 && hue_difference(another_color) > 500
  end
end
