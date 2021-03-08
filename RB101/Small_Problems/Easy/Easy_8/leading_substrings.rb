###LEADING_SUBSTRINGS##

##Problem##
# write a method that RETURNS A LIST of all SUBSTRINGS of a STRING
#   that start at beginning of og string

#   **RETURN VALUE SHOULD BE ARRANGED
#     IN ORDER FROM SHORTEST TO LONGEST**

##Pseudocode//Algo##
# define method called 'leading_substrings'
#   create an empty array called 'substrings'
#   use 1.upto(str.size) do |length
#     pass into substrings with << string[0, length]
#   return substrings

def leading_substrings(str)
  substrings = []
  1.upto(str.length) do |length|
    substrings << str[0, length]
  end
  substrings
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']