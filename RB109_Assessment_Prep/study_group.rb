=begin
# You are given an array which contains only integers (positive and negative).
#Your job is to sum only the numbers that are the same and consecutive. The result should be one array.

# You can asume there is never an empty array and there will always be an integer

Data Structure
input -> array
output -> array

Pseudocode/Algo
Given an array, sum all numbers that are one another

My idea is to pass each number to an array,
summing them if they equal the next one in the array
  how do this though?
So this is not working, what's a better way to do this?

SO none of these working
  how do I sum them




=end



# def sum_consecutives(array)
#   result = []
#   current_number = nil
#   array.each do |num|
#     if current_number == num
#       result[-1] += num
#     else
#       current_number = num
#       result << current_number
#     end
#   end
#   result
# end



p sum_consecutives([1,4,4,4,0,4,3,3,1, 1]) == [1,12,0,4,6,2]
p sum_consecutives([1,1,7,7,3]) == [2,14,3]
p sum_consecutives([-5,-5,7,7,12,0]) ==  [-10,14,12,0]