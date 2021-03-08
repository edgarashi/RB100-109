##Problem##
# given a string, concatenate into a new string
# with case-insensitive
#   alphabetical
#   order of appeareance
#  **whitespace and punctuation shall be removed**

##Data Structure##
# input: string
# output: new string

##Example##
# "The Holy Bible" -> "BbeehHilloTy"
#     what I need is something that has index of alphabet
#     passes through the string looking for next index
#     if not .include(char.downcase) then dont add to result_array
#       so for example starting with index0 = 'a' it looks through doesnt find one
#       index2 it finds in the third word
#         whats the count in the string compared whats the count in the array
#         if != then add the letter
#           should maintain case because use not mutative
  #case is maintained in new string
  #all whitespace is gone
  #if same letter, *order of appearance*
##Pseudocode##
# Dealing with two parameters
#   Order of appearance
#     I believe could be handled with each_with_index(implies string put into array)
#     *if letters are the same, then which has a lower index *
#   Alphabetical
#     first thought is to compare to an alphabetical array i.e. ('a'..'z').to_a
#
#     use non mutative method downcase in order for comparisons
#       add if has lower index in alphabet array
#       first check if char count is higher than 1
#       see which occurence has lower index





def alphabetized(s)
  result_array = []
  alphabet_array = ('a'..'z').to_a
  uppercase_alph = ('A'..'Z').to_a
  string_chars = s.chars.to_a
  string_chars.delete_if {|char| alphabet_array.include?(char.downcase) == false}
  0.upto(alphabet_array.length - 1) do |num|
   string_chars.each do |char|
    if alphabet_array[num] == char || uppercase_alph[num] ==  char
      result_array << char
    end
    end
  end
  result_array

end

p alphabetized("The Holy Bible") #== "BbeehHilloTy"
# "The Holy Bible" -> "BbeehHilloTy"