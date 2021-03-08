# Write a function scramble(str1, str2) that returns true if a portion of str1 characters
# can be rearranged to match str2, others return false

# For example
# str1 is 'rkqodlw' and str2 is 'world' the output would return true
# str1 is 'cedewaraaossoqqyt' and str2 is 'codewars' should return true
# str1 is 'katas' and str2 is 'steak' should return false

# only lowercase letters will be used (a-z). no punctuation or digits will be included

##Data Structure##
# input: two strings
# output: boolean(true or false)

##Pseudocode/Algo##
# Substring plan not working
# What if, create a result array
#   get all characters of str1
#   get all characters of str2
# Wont work to use .include because will add letter multiple times

# *Could I create a count for how many times each letter is in str2?*
#   create a hash with value being amount of occurences
#   when passing characters into result array can check against the value!
    # too complex


#     Anyway I can get EVERY combination of every substring of str1?

# ***YOU CAN USE str.count(char)**
# So pass str1_chars to result_array
#   unless result_array.count(char) > str2.count(char)


def scramble(str1, str2)
  result_array = []
  str1_chars = str1.chars
  str2_chars = str2.chars

  str1_chars.each do |char|
    str1.sub!(char, '') unless str2.include?(char) && str2.count(char) == str1.count(char)
  end

  str1.chars.sort == str2.chars.sort

end


 p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true