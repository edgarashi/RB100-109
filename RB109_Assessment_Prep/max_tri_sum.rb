=begin
Problem
  Given an array of integers, find maximum triplet sum in the array
  W/o duplications
Notes:
  array size is at least 3
  array could be mix of positives, negatives and zeros
  repetition of numbers in array/list could occur
  *duplications not included when summing*

maxTriSum ({3,2,6,8,2,3}) -> (17)
  {6, 8, 3} -> sum is 17

maxTriSum ({2,1,8,0,6,4,8,6,2,4}) ==> return (18)
  {8, 6, 4} -> sum is 18

maxTriSum ({-7,12,-7,29,-5,0,-7,0,0,29}) ==> return (41)
  {12, 29, 0} -> sum is 41


=end

def max_tri_sum(numbers)
  sorted = numbers.sort.reverse.uniq
  tri_sum = []
  3.times do
    tri_sum << sorted.shift
  end
  tri_sum.sum
end


p max_tri_sum([3,2,6,8,2,3]) #== 17
p max_tri_sum([2,9,13,10,5,2,9,5]) #== 32
p max_tri_sum([2,1,8,0,6,4,8,6,2,4]) #== 18
p max_tri_sum([-3,-27,-4,-2,-27,-2]) #== -9
p max_tri_sum([-14,-12,-7,-42,-809,-14,-12]) #== -33
p max_tri_sum([-13,-50,57,13,67,-13,57,108,67]) #== 232
p max_tri_sum([-7,12,-7,29,-5,0,-7,0,0,29]) #== 41
p max_tri_sum([-2,0,2]) #== 0
p max_tri_sum([-2,-4,0,-9,2]) #== 0
p max_tri_sum([-5,-1,-9,0,2]) #== 1