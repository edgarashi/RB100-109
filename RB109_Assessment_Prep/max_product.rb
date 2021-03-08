=begin
Problem
  given an array/list of integers, find product of the
  k maximal numbers

  Notes:
    array size at least (3)
    mixture of positives, negatives, and zeros
    repetition of numbers could occur
Examples:
maxProduct ({4, 3, 5}, 2) ==>  return (20)
  Since the size (k) equal 2 ,
  then the subsequence of size 2 whose gives product of
  maxima is 5 * 4 = 20 .

maxProduct ({8, 10 , 9, 7}, 3) ==>  return (720)
  Since the size (k) equal 3 , then the subsequence of size 3
  whose gives product of maxima is 8 * 9 * 10 = 720 .

maxProduct ({10, 8, 3, 2, 1, 4, 10}, 5) ==> return (9600)
  Since the size (k) equal 5 , then the subsequence of size 5
  whose gives product of maxima is 10 * 10 * 8 * 4 * 3 = 9600 .


Data Structure:
input -> array, integer
output -> integer


Pseudocode/Algo
  sort and reverse array
  this will put highest numbers first
    then for k  amount of times
      shift out of sorted, reversed array to a result array
  find the product of result array


=end

def max_product(arr, k)
  sorted = arr.sort.reverse
  result = []

  k.times do
    result << sorted.shift
  end
  result.inject(:*)
end





p max_product([4,3,5], 2) == 20
p max_product([10,8,7,9], 3) == 720
p max_product([8,6,4,6], 3) == 288
p max_product([10,2,3,8,1,10,4], 5) == 9600
p max_product([13,12,-27,-302,25,37,133,155,-14], 5) == 247895375
p max_product([-4,-27,-15,-6,-1], 2) == 4
p max_product([-17,-8,-102,-309], 2) == 136
p max_product([10,3,-27,-1], 3) == -30
p max_product([14,29,-28,39,-16,-48], 4) == -253344
p max_product([1], 1) == 1