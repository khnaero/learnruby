def element_pair_sum(arr, num)
  counter1 = 1
  arr.each do |i|
    counter2 = counter1
    loop do
      break if counter2 == arr.length
      if i + arr[counter2] == num
        puts "true"
        break
      else
        counter2 += 1
      end
    end

    counter1 += 1
  end
end

array = [2,3,4,5]
number = 7
element_pair_sum(array, number)