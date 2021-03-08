=begin
Problem
  element is a leader if it is greater than The Sum
  of all elements to its right side
Task
  given an array, find all leaders in array
Notes:
  -array size is at least 3
  -array's numbers will be mix of positives, negatives, and zeros
  -repetition of numbers in array could occur
  *-returned array should store leading numbers in same order
  as in orginal array list*



Examples:
arrayLeaders ({1, 2, 3, 4, 0}) ==> return {4}
  4 is greater than the sum all the elements to its right side
  Note : The last element 0 is equal to right sum of its elements (abstract zero).

arrayLeaders ({16, 17, 4, 3, 5, 2}) ==> return {17, 5, 2}
  17 is greater than the sum all the elements to its right side
  5 is greater than the sum all the elements to its right side
  The last element 2 is greater than the sum of its right elements (abstract zero).


Data Structure:
input -> array
output -> array

Pseudocode/Algo
  Since there is an 'abstract zero' (essentially a zero at the end of the array)
    first thought is to just auto add a zero again for right comparison
  Or just if at last element of array
    is it greater than zero?
      if so add to result array
  If not last element in array
   get the range that is current number's index + 1 -> end of array
    sum this and compare to current number
    if it is bigger, add to result array


=end


def array_leaders(numbers)
  result = []

  numbers.each_with_index do |num, idx|
    if num > numbers[(idx + 1)..-1].sum
      result << num
    #elsif numbers.last && num > 0
      #result << num
    end
  end
  result


end




p array_leaders([1, 2, 3, 4, 0]) #== [4]
p array_leaders([16, 17, 4, 3, 5, 2]) #== [17, 5, 2]
p array_leaders([-1, -29, -26, -2]) #== [-1]
p array_leaders([-36, -12, -27]) #== [-36, -12]
p array_leaders([5, -2, 2]) #== [5, 2]
p array_leaders([0, -1, -29, 3, 2]) #== [0, -1, 3, 2]