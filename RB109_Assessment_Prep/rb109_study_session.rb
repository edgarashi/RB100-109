# Given an array of n positive integers and a positive integer s,
# find the minimal length of a contiguous subarray of which the sum ≥ s.
# If there isn't one, return 0 instead.

##Problem##
# Given an array -> n
# And positive integer -> s
# Find MINIMAL length of a contiguous subarray of which the sum is greater than or equal to integer

##Pseudocode/Algo##
# Have array
# Need contiguous subarray that .sum is > s, with .length the smallest
#   -how would compare length?
#   -compare length to other subarrays?

#How get subarrays?
  # two indexs
  # one counting up,
  # one counting back


# def minSubLength(n, s)
#   subarray = []
#   negative_index = -1
#   index = 0
#   loop do
#     subarray << n[index]
#     subarray << n[negative_index]
#     index += 1
#     negative_index -= 1
#     break if subarray.sum >= s && subarray.length
#   end
#   p subarray
# end


def minSubLength(n, s)

  result_array = []
  subarray = []
  (0..n.size).each do |index1|
    (index1..n.size).each do |index2|
      subarray << n[index1..index2]

    end
  end
  subarray.select! do |subarray|
    subarray.sum >= s
  end
  result_array = subarray.sort_by {|x| x.length}

  if result_array.empty?
    0
  else
    result_array[0].length
  end
end




p minSubLength([2,3,1,2,4,3], 7) == 2
  #two values in minSubLength
  #one array, one integer
  #integer -> s
  #find the minal length of a contiguous subarray of which sum is greater than or equal to integer
p minSubLength([1, 10, 5, 2, 7], 9) == 1
p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
p minSubLength([1, 2, 4], 8) == 0

def minSubLength(n, s)
  subs = find_substrings(n)
  subs_greater_than_sum = find_greater(subs, s)
  find_minimum(subs_greater_than_sum)
end

def find_substrings(n)
  subarray = []
  (0..n.size).each do |index1|
    (index1..n.size).each do |index2|
      subarray << n[index1...index2]
    end
  end
  subarray.select { |sub| sub.length != 0}
end

def find_greater(subarray, s)
  subarray.select do |subs|
    subs.sum >= s
  end
end

def find_minimum(arr)
  arr.empty? ? 0 : arr.map {|x| x.length}.min
end