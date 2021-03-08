#write a method that takes one argument, a positive integer,
#and returns a list of the digits in the number

##PSEUDOCODE/ALGO###
# define method digit_list
#   pass in positive integer
#     run .to_s on it
#
#   define an empty array
#     run .each_char on string
#       << each element into empty array
#
    # run .map!(destructive)
    # run to_i on each element
    # return following array

def digit_list(integer)
  string = integer.to_s
  array = []
  string.each_char do |x|
    array << x
  end
  array.map! do |num|
    num.to_i
  end
  return array
end





##EXAMPLES##
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true