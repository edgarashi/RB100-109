###ALL_SUBSTRINGS###

##Problem##
# write a method that returns a list of all substrings of a string
#   returned list should be ordered by where in the substring begins
#   that means all substrings that start at position 0 come first
#   then all substrings that start at position 1 and so on

#   since multiple substrings will occur at each position
#   substrings at a given position should be returned
#     shortest to longest

#     **MAY AND SHOULD USE METHOD FROM PREVIOUS EXERCISE


##Pseudocode//Algo##
# Define method 'substrings' that accepts a string argument
#   create a substrings empty array
    # (0..string.size).each do |start_index|
    #   set a variable 'substring' equal to
    #     string[start_index..-1]
    #     results.concat(leading_substrings(this_substring))


def leading_substrings(str)
  substrings = []
  1.upto(str.length) do |length|
    substrings << str[0, length]
  end
  substrings
end

def substrings(str)
  results = []
  (0...str.size).each do |start_index|
    this_substring = str[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end



p substrings('abcde') == [
 'a', 'ab', 'abc', 'abcd', 'abcde',
 'b', 'bc', 'bcd', 'bcde',
 'c', 'cd', 'cde',
 'd', 'de',
  'e'
]