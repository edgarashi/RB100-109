# Write a method to find the longest common prefix string amongst an array of strings
# if there is no common prefix, return an empty string "".
#*----------------------------------------------------*

#Problem#
# find longest common prefix(beginning of word) string
# if no common prefix return empty string

##Data Structure##
# input -> array of strings
# output -> string/empty string if no common prefix

##Pseudocode/Algo##
# Define method(pass in arr of strings)
#   initialize result_array
#   longest_string = arr.max
#   longest_string_length = longest_string.length
#   initialize a characters array
#   arr.each do |word|
#     characters_array << word.chars
#   end

#   0 upto (longest_string_length - 1) |number|
#     characters_array.each do |char|
#       pass in [char] IF all? of arr elements[number] == char




def common_prefix(arr)
  result_array = []
  longest_string = arr.max
  longest_string_length = longest_string.length
  characters_array = []
  arr.each do |word|
    characters_array << word.chars
  end

  0.upto(longest_string_length - 1) do |length|
    characters_array.each do |subarrays|
      if arr.all? { |word| word[length] == subarrays[length]}
        result_array << subarrays[length]
      else
        return result_array.uniq.join
      end
    end
  end
  result_array.uniq.join
end


p common_prefix(["flower", "flow", "fliwht"]) == "fl"


p common_prefix(["dog", "racecar", "car"]) == ""


p common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"



p common_prefix(["throne", "dungeon"]) == ""



p common_prefix(["throne", "throne"]) == "throne"
