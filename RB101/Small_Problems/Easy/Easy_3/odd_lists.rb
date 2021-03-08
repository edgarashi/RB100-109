#write method returns an array that contains every other
#element of an array that is passed in as an argument
#values in the returned list should be those values that are in
#the 1st, 3rd, 5th and so on elements of argument array

# Examples:
#oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []

# def oddities(array)
#   array.each_index do |x|
#     if x.odd?
#       array.slice!(x)
#     end
#   end
# end

def oddities(array)
  odd_elements = []
  index = 0
  while index < array.size
    odd_elements << array[index]
    index += 2
  end
  odd_elements
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []