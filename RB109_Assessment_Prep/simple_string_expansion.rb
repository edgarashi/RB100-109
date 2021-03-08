# Given a string that includes alphanumeric characters ('3a4B2d') return the expansion of that string: The numeric values represent the occurrence of each letter preceding that numeric value. There should be no numeric characters in the final string. Empty strings should return an empty string.

# The first occurrence of a numeric value should be the number of times each character behind it is repeated, until the next numeric value appears.



# string_expansion('3abc') == 'aaabbbccc'       # correct
# string_expansion('3abc') != 'aaabc'           # wrong
# string_expansion('3abc') != 'abcabcabc'       # wrong

# If there are two consecutive numeric characters the first one is ignored.

# string_expansion('3d332f2a') == 'dddffaa'

# If there are two consecutive alphabetic characters then the first character has no effect on the one after it.

# string_expansion('abcde') == 'abcde'

# Your code should be able to work for both lower and capital case letters.

# string_expansion('') == ''

##Problem##
# numeric values in string, represent the amount of occurences of each letter

##Rules##
# -no numeric characters in the final string
# -empty strings return empty string
# -first occurence of integer should be number of times each character repeated
#     -until next integer
# -two consecutive integers, first one is ignored
# -method should work on lower + capital case letters

##Data Structure##
# input -> string
# output -> new string

##Pseudocode##
# Option 1)
#   result_array is going to be returned regardless
#   iterate over string
#     *find integer (n) preceding characters*
#     n will represent amount of times subsquent character are passed to
#     result_array
# How to find integer(n) that is preceding characters?
#   -two consecutive integers, first is ignored
#   -need to iterate through the string
#   -looking for integers
#   -everytime one is found, check if there is integer subsquent it
#     -if there is, ignore and move to next iteration
#     -if subsquent character is a letter
#       -add letter to result_array n.times
  # -each method || 0.upto(str.length-1)
  # -might be easier to iterate, if string is seperated into chars array
  #   -this would allow element reference
  # -with the upto method, parameter can represent index
  # -and to check if next index == integer || char could do index + 1
  #   -if next index + 1 == char
  #     -n.times {result_array << char}
  #got it for one character, however need iteration to continue if
    # -iteration does not hit another integer


def string_expansion(str)
  result_array = []
  integer = (1..10).to_a
  alphabet = ('a'..'z').to_a
  iterator = []
  str_chars = str.chars

  result_array = number_expander(str_chars)

  result_array.join
end

def number_expander(chars)
  integer = (1..10).to_a
  integer_string = ('1'..'10').to_a
  alphabet = ('a'..'z').to_a
  iterator = []
  result = []
  zero = [0, '0']

  0.upto(chars.length - 1) do |index|
    if integer.include?(chars[index].to_i) && #if current index is an integer
       integer.include?(chars[index + 1]) == false
        iterator << chars[index]

    elsif integer.include?(chars[index].to_i) == false && #if current index is NOT an integer
          alphabet.include?(chars[index].downcase) && #and current index IS a character
          iterator.empty? == false  ##have been  numbers in string

          (iterator[-1].to_i).times {result << chars[index]} #use previous iterato


    elsif alphabet.include?(chars[index].downcase) && #current index is a character
          integer_string.include?(chars[0..index]) == false && #


          result << chars[index]
    elsif chars[index].to_i == 0
        iterator << chars[index]
    end
  end
  result.delete_if {|char| char.to_i > 0}
end

# p string_expansion('3abc') == 'aaabbbccc'
#       #3 -> integer
#       #3.times{'a'}, 3.times{'b'}, 3.times{'c'}
# p string_expansion('3D2a5d2f') == 'DDDaadddddff'
 p string_expansion('0d0a0v0t0y') #== ''
      #0 -> integer
      #empty string returned, because 0 occurences of each char
# p string_expansion('3d332f2a') == 'dddffaa'
      #332f -> 33 is ignored
      #2 is used for iteration on 'f'
p string_expansion('abcde') #== 'abcde'
# p string_expansion('1a4bc3de') == 'abbbbccccdddeee'
p string_expansion('cvy3b2vedv') #== 'cvybbbvveeddvv'