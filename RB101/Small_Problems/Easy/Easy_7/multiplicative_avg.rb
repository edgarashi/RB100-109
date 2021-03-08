###MULTIPICATIVE_AVG###

##Problem##
# write a method that takes an array of integers as input
#   multiply all numbers together
#   divides the result by the entries in the array
#   and prints result rounded to 3 decimal places

#   **ASSUME ARRAY IS NON-EMPTY**

##PSEUDOCODE/ALGO##
# Define method 'show_multiplicative_average'
#   pass in array of integers as argument
#   run .inject(:*) to multiply all integers
#     save result as 'result'
#     divide result/array.length
#      result.to_f.round(3)

def show_multiplicative_average(array)
  result = (array.inject(:*).to_f)/array.length.to_f
  result.to_f
  puts "The result is #{format('%.3f', result)}"
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667