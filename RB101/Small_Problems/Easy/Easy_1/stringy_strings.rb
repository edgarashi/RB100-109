###Problem
# Write a method that takes on argument, a positive integer,
# and returns a string of alternating 1s and 0s,
# always starting with 1.
# The length of the string should match the given integer


###PSEUDOCODE/ALGORITHM###
# Create a method named stringy
# Pass in integer (called size because creating size of 1010)
# Create an empty array

# Use .times method
#   This method ALWAYS starts with 0
#   So run .even? method on |index| passed in
#   Add new 1's and 0's to array

# Return array.join





def stringy(size)
  array = []

  size.times do |index|
    numbers = index.even? ? 1 : 0
    array << numbers
  end

  array.join
end




puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'