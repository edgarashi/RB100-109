###REVERSE_THE_DIGITS_IN_A_NUMBER###
# write a method that takes a positive integer as argument
# and returns that number with digits reversed

##Pseudocode//Algo##
# define a method called reversed_number
#   pass in integer as argument
# create an string_integers = integer.to_s.chars

# create result array
# create a variable called length = string_integers.length
# counter = 0
#   loop do
#     result << string_integers.pop
#     counter += 1
#     break if counter == length
# result.sub!(/^[0]+/,'')
# result.to_i

##MY SOLUTION##
# def reversed_number(integer)
#   string_integers = integer.to_s.chars
#   result = []
#   length = string_integers.length
#   counter = 0
#     loop do
#       result << string_integers.pop
#       counter += 1
#       break if counter == length
#     end
#   integer_result = result.join.to_i
#   integer_result
# end

##LS SOLUTION##
def reversed_number(number)
  string = number.to_s
  reversed_string = string.reverse
  reversed_string.to_i
end



p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1