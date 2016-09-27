# first try
# filename = ARGV[0]

# sum = 0

# File.read(filename).each_line do |line|
# 	line_array = line.chomp.split(//)
# 	# sum = 0
# 	# line_array.each { |i| sum += i.to_i }
# 	sum += line_array.inject(0) { |sum, x| sum + x.to_i }
# end

# puts sum

#################################################################################

#simple cq answer:
# path must be updated to the file path on your local machine
path = File.expand_path("../../../public/challenges", __FILE__)

def sum_digits(n)
  n.split("").inject(0) do |m, num|
    m += num.chomp.to_i
    m
  end
end

result = 0

File.readlines("#{path}/numbers.txt").each do |number|
  result += sum_digits(number)
end

p result

#################################################################################

class NumbersSummer

  attr_reader :file

  def initialize(file)
    @file = file
  end

  def sum
    numbers.inject(0) do |memo, number|
      memo += sum_digits(number)
    end
  end

  private

  def sum_digits(n)
    n.split("").inject(0) do |m, num|
      m += num.chomp.to_i
      m
    end
  end

  def numbers
    File.readlines(file)
  end

end

path = File.expand_path("../../../public/challenges/numbers.txt", __FILE__)
summer = NumbersSummer.new(path)
p summer.sum