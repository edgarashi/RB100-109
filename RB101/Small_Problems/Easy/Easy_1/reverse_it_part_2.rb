###Reverse it (Part 2)
# Write a method that takes on argument, a string containing one
# or more words, and returns the given string with words that
# contain five or more characters reversed

# Each string will consist of only letters and spaces
# Spaces should be included only when more than one word is present

##PSEUDOCODE/ALGORITHM##
# Create an empty array
#   Use .split method and pass into array
#   Use .each
#     if element.length >= 5
#     then reverse!
#   then join(' ') the array



def reverse_words(string)
  array = string.split
  array.each do |x|
    if x.length >= 5
      x.reverse!
    end
  end
  array.join(' ')

end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')