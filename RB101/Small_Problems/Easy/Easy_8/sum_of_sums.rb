###SUM_OF_SUMS###

##Problem##
# write a method that takes ARRAY OF NUMBERS and returns
#   SUM OF THE SUMS of each leading subsequence for array

#   **MAY ASSUME ARRAY HAS AT LEAST ONE NUMBER**

##Pseudocode//Algo##
# Define a method named sum_of_sums
# pass in ARRAY OF NUMBERS as argument
#   set variable 'sum_total' set to 0
#   use 1.upto(array.size)
#     sum_total += sumbers.slice(0 to count) .reduce(:+)
# return sum_total

def sum_of_sums(array)
  sum_total = 0
  1.upto(array.size) do |count|
    sum_total += array.slice(0, count).inject(:+)
  end
  sum_total
end



p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35