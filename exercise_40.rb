# Exercise 40
# You will write a method, find_peaks(array), that accepts an array of integers
# The method should return an array containing all of "peaks" of the array.
# An element is considered a "peak" if it is greater than both it's left and right neighbour.
# The first or last element of the array is considered a "peak" if it is greater than it's one neighbour

# Write Your method code here
def find_peaks(array)
    peaks = []
    array.each_with_index do |x, index|
        if (array[index] > [(index+1)]) && (array[index] > array[(index-1)])
            peaks << array[index]
        elsif array.first > array[1]
            peaks << array.first
        elsif array.last > array[(array.size-1)]
            peaks << array.last
        end
    end
    return peaks
end
# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, array, expected)
    actual = find_peaks(array)
    if actual != expected
        puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
        return false
    end

    puts "Test ##{test_number}: Correct"
    return true
end

# run_tests runs each of the test cases.
def run_tests()
    check_solution(1, [1, 3, 5, 4], [5])
    check_solution(2, [4, 2, 3, 6, 10], [4, 10])
    check_solution(3, [4, 2, 11, 6, 10], [4, 11, 10])
end

# Execute the tests.
run_tests()