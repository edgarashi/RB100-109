# Find the length of the longest substring in the given string that is the same in
# reverse.

# As an example, if the input was "I like racecars that go fast", the substring
# (racecar) length would be 7

# Example:
# "a" -> 1
# "aab" -> 2
# "abcde" -> 1
# "zzbaabcd" -> 4
# "" -> 0

##Data Structure##
# input: string
# output: integer

##Pseudocode##
# Get all substrings of string
# If string's length is 1, simply return integer 1 w/o iteration
# Remove all substrings that arent palindromes
# AND remove all substrings with a length less than or equal to 1
# Then sort to find the longest one

def palindrome_substring(string)
  array = []

  0.upto(string.length - 1) do |index1|
    index1.upto(string.length) do |index2|
      array << string[index1..index2]
    end
  end

  array.select! do |substring|
    substring.reverse == substring && substring.length > 1
  end
  array
end

def longest_palindrome(str)
  array = []
  result_array = []
  substring_array = palindrome_substring(str)

  result_array = substring_array.sort_by do |substring|
    substring.length
  end

  if str.length == 1
    1
  elsif str.empty?
    0
  else
    result_array[-1].length
  end
end


p longest_palindrome("") == 0
p longest_palindrome("a") == 1
p longest_palindrome("aa") == 2
p longest_palindrome("baa") == 2
p longest_palindrome("aab") == 2
p longest_palindrome("baabcd") == 4
p longest_palindrome("baablkj12345432133d") == 9
