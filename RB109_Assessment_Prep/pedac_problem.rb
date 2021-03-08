#Problem:
# Given a string, write a method change_me which returns the same
# string but with all the words in it that are **palindromes** uppercased

# **Palindrome any word that '==' itself backwards**

#input: string
#output: string (not the same object)
#rules:
#    Explicit requirements:
      #   -every palindrome in the string must be converted to
      #    uppercase. (Reminder: a palindrome is a word that reads the same
      #    forwards and backward).
      #   -Palindromes are case sensitive ("Dad" is not a palindrome, but "dad" is)

      # Implicit requirements:
      #   -returned string should not be the same string object
      #   -if the string is an empty string, result should be an
      #    empty array


#Algorithm:
  # - initialize a result variable to an empty array
  # - create an array named substring_arr that contains all of
  #   the substrings of the input string that are atleast 2 characters long
  # - loop through the words in the substring_arr array
  # -if the word is a palindrome append it to result array
  # -return the result array

#Pseudocode##
# START

#     /* Given a string named 'string' */

#     SET result = []
#     SET starting_index = 0

#     WHILE starting_index <= length of string - 2
#       SET numChars = 2
#       WHILE numChars <= length of string - starting_index
#         SET substring = num_chars characters from string starting at
#         starting index append substring to result array
#         SET num_chars = num_chars + 1

#       SET starting_index = starting_index + 1

#     RETURN result

# END

##COMPLETE INFORMAL PSEUDOCODE##
# input : a string
# output: an array of substrings
# rules: palindrome words should be case sensitive, meaning "abBA"
#        is not a palindrome

# Algorithm:
#   substrings method
#   =================
#     -create an empty array called 'result' that will contain all required substrings
#     -create a 'starting_index' variable(value '0') for the starting index of a substring
#     -start a loop that iterates over 'starting-index' from '0' to the length of the string minus 2
#       -create a 'num_chars' variable (value '2') for the length of the substring
#       -start an inner loop that iterates over 'num_chars' from '2' to 'string.length- starting_index'
#       -append the extracted substring to the 'result' array
#       -increment the 'num_chars' variable by '1'
#     -end the inner loop
#     -increment the 'starting_index' variable by '1'
#     -end the outer loop
#     -return the 'result' array

#   is_palindrome? method
#   =====================
#   -inside the 'is_palindrome?' method, check whether the string
#   value is equal to its reversed value. You can use the
#   string#reverse method

#   palindrome_substrings method
#   ============================
#   -initialize a result variable to an empty array
#   -create an array named substring_arr that contains all of
#   the substrings of the input string that are atleast 2 characters long
#   -loop thru the words in the susbtring_arr array
#   -if the word is a palindrome, append it to the result array
#   -return the result array

def substrings(str)
  result = []
  starting_index = 0

  while (starting_index <= str.length - 2)
    num_chars = 2
    while (num_chars <= str.length - starting_index)
      substring = str.slice(starting_index, num_chars)
      result << substring
      num_chars += 1
    end
    starting_index += 1
  end
  result
end

def is_palindrome?(str)
  str == str.reverse
end

def palindrome_substrings(str)
  result = []
  substrings_arr = substrings(str)
  substrings_arr.each do |substring|
    result << substring if is_palindrome?(substring)
  end
  result

end




p palindrome_substrings("supercalifragilisticexpialidocious"); # ["ili"]
p palindrome_substrings("abcddcbA");   # ["bcddcb", "cddc", "dd"]
p palindrome_substrings("palindrome"); # []
p palindrome_substrings("");           # []