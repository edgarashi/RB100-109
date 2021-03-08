##MULTIPLY_ALL_PAIRS##

##Problem##
# write a method that takes TWO ARRAY ARGUMENTS
#   in which EACH array contains LIST OF NUMBERS
#   return a NEW ARRAY
#     contains product of every pair of numbers that can be formed
#     btwn the elements of the two arrays
#   result SHOULD BE SORTED BY INCREASING VALUE

#   **MAY ASSUME NEITHER ARGUMENT IS EMPTY ARRAY**

##Pseudocode/Algo##
# Define method 'multiply_all_pairs'
#   pass in two ARRAY OF INTEGERS arguments
#     (arr1, arr2)
#  run .each on array_1 (set instance variable as item_1)
#    run .each on array_2 (set instance variable as item_2)
#    add item_1 * item_2 to product array
# return products array sorted (using .sort)

def multiply_all_pairs(arr1, arr2)
  products = []
  arr1.each do |item_1|
    arr2.each do |item_2|
      products << item_1 * item_2
    end
  end
  products.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
