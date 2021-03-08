# Given an array of strings made only from lowercase letters,
# return an array of all characters that show up in all strings within
# the given array (including duplicates)
# For example, if a character occurs 3 times in all strings but not
# 4 times, you need to include that character three times in the answer

##Data Structure##
# input: array of lowercase strings
# output: a new array containing reoccuring characters
#   **output is an empty array if there are no reoccuring characters**

##Pseudocode/Algo##
# 1) Define a method common_chars and pass in array of lowercase strings
# 2) Initialize a 'result_array' that will be returned regardless of if reoccuring characters
# 3) Find reoccuring characters
#   - iterate through each string object in the original array (each, select, map)
#   - pass in each character of one of words and check it against all other objects (.all? method)
#   - if character appears in each word, then append it to result_array using (<<)
# 4) return result array

# common chars (argument array)
#   initialize result_array
#   initialize 'characters' variable, pass in element from og array using .pop.chars

#   on characters array use .each to iterate through each remaining word
#   if .all elements of og array.include?(char)
#     result_array << char
#     should pass in character to result array IF character is in every word





def common_chars(arr)
  working_array = arr.map { |word| word.dup }
  result_array = []
  characters = working_array.shift.chars
  characters.each do |char|
    if working_array.all? { |word| word.include?(char)}
      result_array << char
      working_array.each do |words|
        words.sub!(char, '')
      end
    end
  end
  result_array
  p arr
end


p common_chars(["bella", "label", "roller"]) == ["e", "l", "l"]
p common_chars(["cool", "lock", "cook"]) == ["c", "o"]
p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]
p common_chars(["aabbaaaa", "ccdddddddd", "eeffee", "ggrrrr", "yyyzz"]) == []
