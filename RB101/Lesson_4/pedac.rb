# PROBLEM

# Given a string, write a method change_me which returns the same
# string but with all the words in it that are palindromes uppercased.

# change_me("We will meet at noon") == "We will meet at NOON"
# change_me("No palindromes here") == "No palindromes here"
# change_me("") == ""
# change_me("I LOVE my mom and dad equally") == "I LOVE my MOM and DAD"

# input: string
# output: string (not the same object)
# rules:
#       Explicit requirements
#          -every palindrome in the string must be converted to
#           uppercase. (Reminder: a palindrome is a word that reads
#           the same forwards and backward)
#          -Palindromes are case sensitive ("Dad" is not a palindrome, but "dad is.")

#       Implicit requirements:
#           -the returned string shouldn't be the same string object
#           - if the string is an empty string, the result should be an empty array

# Test cases:

#palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
#palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
#palindrome_substrings("palindrome") == []
#palidnrome_substrings("") == []

#Some questions you might have?
# 1. What is a substring?
# 2. What is a palindrome?
# 3. Will inputs always be strings?
# 4. What does it mean to treat palindrome words case-sensitively?

# input: string
# output: an array of substrings
# rules:
#       Explicit requirements:
#           - return only substrings which are palindromes
#           - palindrome words should be case sensitive, meaning "abBA"
#             is not a palindrome

#Algorithm
# - initialize a result variable to an empty array
# - create an array named substring_arr that contains all of the
#   substrings of the input string that are at least 2 characters long
# - loop thru the words in the substring_arr array
# - if the word is a palindrome, append it to the result
#   array
# - return the result array

# for each starting index from 0 thru the next to last index position
  # for each substring length from 2 until there are no substrings of that length
    # extract the substring of the indicated length starting at the indicate index position
  # end of inner loop
# end of outer loop

#START
#
#     /* Given a string named 'string' */
#
#     SET result = []
#     SET starting_index = 0
#
#     WHILE starting_index <= length of string - 2
#       SET numChars = 2
#       WHILE numChars <= length of string - starting_index
#         SET substring = num_chars characters from string starting at
#         append substring to result array
#         SET num_chars = num_chars + 1
#
#        SET starting_index = starting_index + 1
#
#   RETURN result
#
# END

# Inside the 'is_palindrome?' method, check whether the string
# value is equal to its reversed value. You can use the
# String#reverse method.

def substrings(str)
  result = []
  starting_index = 0;

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

p palindrome_substrings("supercalifragilisticexpialidocious")
p palindrome_substrings("abcddcbA")
p palindrome_substrings("palindrome")
p palindrome_substrings("")
