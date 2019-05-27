def bubble_sort(array)
    # find the amount of array elements
    a = array.length
    # set a boolean variable called swept.
   swept = true
    # start a while loop
   while swept do
     swept = false
     (a - 1).times do |i|
       if array[i] > array[i + 1]
         array[i], array[i + 1] = array[i + 1], array[i]
     swept = true
       end
     end
   end
   print array 

end
input = [1, 5, 2, 8, 4, 3]
bubble_sort(input)
