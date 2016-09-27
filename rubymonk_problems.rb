# Find the frequency of a string in a sentence
def find_frequency(sentence, word)
  puts sentence.downcase.gsub(/[^a-z0-9\s]/i, '').split(' ').count(word.downcase)
end

find_frequency("Do? or do not... there is no try.", "do")

# Build a calculator
class Calculator
  def add(a, b)
   a+b
  end

  def subtract(a, b)
   a-b
  end
end

# Find the length of strings in an array
def length_finder(input_array)
  arr = []
  input_array.map { |i| arr << i.length }
  return arr
end

def length_finder(input_array)
  input_array.map {|element| element.length}
end

# Find non-duplicate values in an Array
