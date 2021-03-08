###MULTIPLY_LISTS##

##Problem##
# write a method that takes two array arguments
# in which EACH array contains A LIST OF NUMBERS
#   return NEW ARRAY that containts the prodct
#   of EACH PAIR of NUMBERS from arguments
#   THAT HAVE SAME INDEX

#   **MAY ASSUME THAT ARGUMENTS CONTAIN SAME NUMB. ELEMENTS**

##PSEUDOCODE/ALGO##
# Define a method multiply_list
#   which accepts two array of numbers (ARR1, ARR2)
#   return NEW ARRAY that containts product

#   set result_array equal to [] (EMPTY)
#   set a counter equal to 0
#   start a loop
#     result_array<<(arr1[counter] * arr2[counter])
#     counter += 1
#     break if counter >= arr1.length
# return result_array

def multiply_list(arr1, arr2)
  result_array = []
  counter = 0
    loop do
      result_array << (arr1[counter] * arr2[counter])
      counter += 1
      break if counter >= arr1.length
    end
  result_array
end



p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
