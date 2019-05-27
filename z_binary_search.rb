# In Class Exercise: Binary Search
# Write a method, binary search(array, target), that accepts an array and another input as target
# The method should use the binary search algorithm to return the position of the element where the target is found

def binary_search(target, array)
	middle = array.length / 2
	# start index
  i = 0
  j = array.length - 1

  while i < j
    if array[middle] == target
		return middle
    elsif array[middle] < target
      i = middle + 1
      middle = (i + j) / 2
    else
      j = middle - 1
      middle = (i + j) / 2
    end
  end
  return -1
end

test_array = (100..200).to_a
puts binary_search(135, test_array) == 35

test_array = [13, 19, 24, 29, 32, 37, 43]
puts binary_search(35, test_array) == -1