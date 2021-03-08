#what would be output by this code?

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end

#output would be 1, 2, 3, 4 and 1
#because .shift will remove 1, however we aren't putting out the numbers array
#though that would be [2, 3, 4]
#NO! Output is 1 and 3.





#what would be output by this code?
# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.pop(1)
# end

#would put 1 and 3?
#and put 3? because pop
#NOOO. is 1 and 2.

numbers = [1, 2, 3, 4]
numbers.each_with_index do |number, index|
  p "#{index} #{numbers.inspect} #{number}"
  numbers.shift(1)
end