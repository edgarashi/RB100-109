=begin
Problem:
Given an array of integers, find the minimum sum which is obtained from
summing EACH TWO INTEGERS PRODUCT

  -Array will contain POSITIVES ONLY
  -Array will always have an even size

Data Structure:
input -> array
output -> integer

Rules:
  find MINIMUM sum which is obtained from summing EACH TWO INTEGERS PRODUCT
  every integer in array will be used
  do not worry about negatives
  array will always be even

Example:
[5, 4, 2, 3] == 22
(5*2) + (3*4) == 22

[9, 2, 8, 7, 5, 4, 0, 6] -> 74
9*0 + 8*2 + 7*4 + 6*5 = 74

Pseudocode
  Notes say Array will always have an even size
  This feels like a tip

  if I could get array in EVERY order
    then just multiply (element 1 by element 2) + (element 3 by element 4) and pass the result to an array
    and run min on array
  how to get every order of array?

  Is there a better way to approach this?
    The 'get every order of array' helps with only using elements in array
      because when using subarrays I ran into the problem of not being able to validate JUST the use of the 4 elements
      in the array
    however 'get every order of array' presents its own troubles
    I am thinking some form of .slice might be helpful
    but what would be the best implementation of this?
     get every order approach did not work because array can be of varying sizes


*original idea:*
  have a result array
    if I can get every combo of multiplications
      ex. [5, 4, 2, 3]
      5*4 = 20, 2 * 3 == 6
      [20, 6]
      5*2 = 10, 4* 3 == 12
      [10, 12]
    things to note:
      each subarray has a length of 2, half the og array's length
       [[20, 6], [10, 12]] <--- Goal
       Using .sum or .inject -> [26, 22] (also equal to half og array's length)
        then just find the minimum
      I like this approach
       (5, 4) and (2, 3) || (5, 2) and (3, 4)
=end


def min_sum(arr)
  sum_arr = []
  new_arr = arr.sort

  loop do
    break if new_arr.empty?
    sum_arr << new_arr.pop * new_arr.shift

  end
  sum_arr.sum
end

p min_sum([5,4,2,3]) == 22
p min_sum([12,6,10,26,3,24]) == 342
p min_sum([9,2,8,7,5,4,0,6]) == 74
p min_sum([1,2]) == 2
p min_sum([]) == 0
