# Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

family = ["lauren", "hunter", "lance"]

family.each_with_index { |x, y| puts "#{y+1}. #{x}" }