# first try
# filename = ARGV[0]

# txtarr = File.readlines(filename)

# txtarr.each do |line|
# 	if line.chomp == line.chomp.reverse
# 		puts line
# 	end
# end

#################################################################################

# second try
# Why don't I need to open the file first??
# filename = ARGV[0]

# File.read(filename).each_line do |line|
# 	if line.chomp == line.chomp.reverse
# 		puts line
# 	end
# end

#################################################################################

# simple cq answer:
# def palindrome?(str)
#   str == str.reverse
# end

# names = File.readlines("#{Dir.home}/Desktop/names.txt")

# names.select do |name|
#   palindrome?(name.chomp)
# end

#################################################################################

# (OOP) Good practice way:
class PalindromeFinder

  attr_reader :words

  def words
  	@words
  end

  def initialize(words)
    @words = words
  end

  def palindrome?(word)
    word == word.reverse
  end

  def palindromes
    words.select do |word|
      palindrome?(word)
    end
  end
end

names = File.readlines("#{Dir.home}/Desktop/names.txt")
finder = PalindromeFinder.new(names)
finder.palindromes