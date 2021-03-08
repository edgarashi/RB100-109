###DOUBLE_CHAR_PRT1###

##Problem##
# write a method that takes a STRING,
#   and returns a NEW STRING in which every character
#   is doubled

##Pseudocode//Algo##
# create a method 'repeater' and pass in string as argument
#   create an empty results array
#   use .chars.each on string
#   pass in char + char into results
#   return results.join


def repeater(string)
  results = []
  string.chars.each do |char|
    results << char + char
  end
  results.join
end




p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''