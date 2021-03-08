#method that takes two strings as arguments, determines
#the longest of the two strings, and then returns
#the result of concatenating the shorter string
#the longer string, and the shorter string once again
#you may assume that the strings are of diff lengths

# Examples:
# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

def short_long_short(string1, string2)
  if string1.length > string2.length
    "#{string2}#{string1}#{string2}"
  else string2.length > string1.length
    "#{string1}#{string2}#{string1}"
  end
end


puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"
