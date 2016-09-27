require "benchmark"

def slow(list1, list2)
  count = 0
  list1.each do |n|
    count += 1 if list2.include?(n)
  end
  count
end

def fast(list1, list2)

  # Convert list2 into a Hash
  hash2 = {}
  list2.each{ |n| hash2[n] = true }

  count = 0
  list1.each do |n|
    # count += 1 if hash2.include?(n)
    count += 1 if hash2.has_key?(n)
  end

  count
end

list_a = 1_000.times.map{ rand(1_000) }
list_b = 1_000_000.times.map{ rand(1_000_000) }

puts Benchmark.realtime{ slow(list_a, list_b) }
puts Benchmark.realtime{ fast(list_a, list_b) }