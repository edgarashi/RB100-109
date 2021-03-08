# Given a non-empty string check if it can be constructed by taking
# a substring of it and appending multiple copies of the substring
# together. You may assume the given string consists of lowercase
# English letters only.

# Example 1:

# Input: "abab"
# Output: True
# Explanation: It's the substring "ab" twice"

# Example 2:

# Input: aba
# Output: false
# Explanation: It is not a repeating substring

##Problem##
# 1) Given non-empty STRING
# 2) Divide into substrings
# 3) Check if substrings repeat
# 4) Return true if they do repeat, false otherwise

##Data Structure##
# input: string
# output: boolean value

##Pseudocode##
# Define a method named 'repeated_substring_pattern'

# Pass in a string as an argument

# Set value 'length_of_substring' equal to (string.length/2)

# Divide string into an array, splitting down the middle using
# length of substring value

# See if the elements in the array equal each other
# Return boolean value

def repeated_substring_pattern(str)
  array = []
  length_of_substring = (str.length/2)
  array << str[0..length_of_substring-1]
  array << str[length_of_substring..-1]

  array[0] == array[1]
end





p repeated_substring_pattern("abab") == true
p repeated_substring_pattern("aba") == false
p repeated_substring_pattern("aabaaba") == false
p repeated_substring_pattern("abaababaab") == true
p repeated_substring_pattern("abcabcabcabc") == true
#***###abc + abc + abc + abc###***#
