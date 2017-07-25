# Given a collection of numbers see if any pair of numbers is equal to the sum of a given number
def element_pair_sum(arr, num)
  counter1 = 1
  status = "false"
  arr.each do |i|
    counter2 = counter1
    while counter2 < arr.length
      if i + arr[counter2] == num
        puts "true"
        status = "true"
        break
      else
        counter2 += 1
      end
    end
    
    break if status == "true"
    counter1 += 1
  end
end

array = [2,3,4,5,6,12]
number = 11

element_pair_sum(array, number)