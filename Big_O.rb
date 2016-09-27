# O(1)
def first_element_is_red?(array)
  array[0] =='red' ? true : false
end

# O(n)
def contains?(array, value)
  array.each do |item| 
    return true if item == value
  end
  false
end

# O(n^2)
def duplicates?(array1)
  array1.each_with_index do |item1, index1|
    array1.each_with_index do |item2, index2|
      next if index1 == index2
      return true if item1 == item2
    end
  end
  false
end

# O(log n)
def binary_search(array, value, from=0, to=nil)
    to = array.count - 1 unless to
    mid = (from + to) / 2
 
    if value < array[mid]
        return binary_search(array, value, from, mid - 1)
    elsif value > array[mid]
        return binary_search(array, value, mid + 1, to)
    else
        return mid
    end
end 
 
p binary_search([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16], 15)