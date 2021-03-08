###UPPERCASE_CHECK###

##Problem##
# write a method that takes a STRING argument
# and returns true if all of the alphabetic characters
# inside the STRING are UPPERCASE, false otherwise
# characters not alphabetic should be ignored

##Pseudocode//Algo##
  # do a check of string equals string.upcase





def uppercase?(string)
  string == string.upcase
end


p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true