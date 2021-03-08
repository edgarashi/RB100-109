=begin
Problem:
  Given an array of integers find the MAXIMUM DIFFERENCE
  between the successive elements in its sorted form

Notes:
  array size is at least 3
  array's numbers be mixture of positives and negatives and zeros
  repetition of numbers in array could occur
  max gap is computed Regardless the sign

Examples:
  maxGap ({13,10,5,2,9}) ==> return (4)
    maxgap after sorting is 4
      diff btwn 9 and 5 is 4

  maxGap ({-3,-27,-4,-2}) ==> return (23)
    maxgap after sorting is 23
      -4 - (-27) = 23


Data Structure
input -> array
output -> integer

Pseudocode/Algo
  initialize a variable for sorted array
  initialize a result array
  iterat through the sorted array with index
    result << (number at next index - current number)
  find max of result



=end

def max_gap(numbers)
  sorted = numbers.sort
  result = []

  sorted.each_with_index do |digit, idx|
    if sorted[idx + 1] == nil
      next
    else
      result << (sorted[idx + 1] - digit)
    end
  end
  result.max
end



p max_gap([13,10,2,9,5]) #== 4
p max_gap([13,3,5]) #== 8
p max_gap([24,299,131,14,26,25]) #== 168
p max_gap([-3,-27,-4,-2]) #== 23
p max_gap([-7,-42,-809,-14,-12]) #== 767
p max_gap([12,-5,-7,0,290]) #== 278
p max_gap([-54,37,0,64,-15,640,0]) #== 576
p max_gap([130,30,50]) #== 80
p max_gap([1,1,1]) #== 0
p max_gap([-1,-1,-1]) #== 0