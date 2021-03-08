###What to do#
# Write a method that takes on argument, a string, and returns
# a new string with words in reverse order

###ALGORITHM/PSEUDOCODE###
# Define method named reverse_sentence
# Pass in string
#   run .split (which turns each word seperetaly into an array)
#   use reverse on array
#   use .join(' ')





def reverse_sentence(string)
  string.split.reverse!.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence("Reverse these words") == 'words these Reverse'