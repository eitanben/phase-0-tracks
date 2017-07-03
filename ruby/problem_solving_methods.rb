#5.6 Simple Search


arr = [42, 89, 23, 1, 56, 4]

def search_array(array, num)
  integer = nil
#loop through array
  array.length.times do |i|
    if
      array[i] == num
      integer = i
    end
  end

p integer
end
search_array(arr, 73)

#5.6 Release 1 . fibonacci

def fibonacci(n)
    a = 0
    b = 1

    n.times do
        save_a = a
        a = b
# Add up previous two numbers
        b = save_a + b
    end
    return a
end

# How many numbers today ?
def fib(num)
  fib_arr = []

  num.times do |n|
    fib_arr << fibonacci(n)
  end
  print fib_arr
  if
    fib_arr.last == 218922995834555169026
    puts "We made it!"
  end
end
fib(100)





# 5.6 Release 2 - Bubble sort
# The Algorithm Pseudocode:
# bubblesort (A, N)

# { repeat the following steps until the list is sorted
#   put 1 into i
#   repeat while i < N
#      if A[i] > A[i+1]
#           then swap A[i], A[i+1]
#      end if
#      add 1 to i
#   end repeat
# end repeat
# }end bubblesort

# The bubble sort algorithm:

#     Compare adjacent elements. If the first is greater than the second, swap them.
#     Do this for each pair of adjacent elements, starting with the first two and ending with the last two. At this point the last element should be the greatest.
#     Repeat the steps for all elements except the last one.
#     Continue for one less element each time, until there are no more pairs to compare.
# Set index to 0
# Compare index 0 to index +1
# If +1 is greater than 0, swap the characters
#
# Repeat comparison
# Until we reach the end of the array

# Repeat until array is sorted lowest to highest
# The bubblesort goes from beginning to end, repeating until sorted from lowest to highest

def bubble_sort(arr)
  result = arr.dup
  x = 0

  while x < result.count - 1
    current = result[x]
    nextItem = result[x+1]
    puts "before swap"
    puts "The current is: #{current}; The next is: #{nextItem}"
    if current > nextItem
      temp = nextItem
      result[x+1] = current
      result[x] = temp
    end
    puts "after swap"
    puts "The current is: #{current}; The next is: #{nextItem}"
    puts ""
    x += 1
  end

  if arr == result
    p result
    return result
  else
    return bubble_sort(result)
  end

end
bubble_sort([1,3,5,2,4])

# # => [1, 2, 3, 4, 5]
