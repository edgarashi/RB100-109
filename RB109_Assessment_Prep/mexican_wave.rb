=begin
In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string
and you must return that string in an array where an uppercase letter is a person standing up.

 1.  The input string will always be lower case but maybe empty.

 2.  If the character in the string is whitespace then pass over it as if it was an empty seat
#####################################################
P:
Goal / Problem Restatement: Take a string into a method and iterate through the string as whole and capitalize each character starting from the first character.

In each iteration, each subsequent character in the string will be capitalized. For each iteration and capitalization of character, the modified string will represented as an element in an array in order.

Finally return an array containing the elements outlined above.


Data Structure:
input -> string
output -> array of strings

Rules:
  -string is always lower case
  -*may be empty* (String can be empty)
  -pass over whitespace (Ignore whitespace)


Mental Model:
If given "abc", the return value should be ["Abc", "aBc", "abC"].
If given "lucas is my friend", the return value should be ["Lucas is my friend", "lUcas is my friend", "luCas is my friend", "lucAs is my friend", "lucaS is my friend", "lucas Is my friend", "lucas iS my friend", "lucas is My friend", "lucas is mY friend", "lucas is my Friend", "lucas is my fRiend", "lucas is my frIend", "lucas is my friEnd", "lucas is my frieNd", "lucas is my frienD"]

If given '', the return value should be ''

If given '[]', the return value should '[]'
If given 673 | 78.0| :yes, what will the return value be?

Examples:
p wave("[]") == '[]'
  #[] -> non-mutated '[]' is returned
p wave('') == ''
p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

Data Structure:
Input|Processing|Output = String - Array of strings

Algorithm:
current return value is:
["Hello", "hEllo", "heLlo", "heLlo","hellO"]
  why is str[2] and str[3] the same?
  i'm using an iterator up to str_chars.length -1
    which in this case should iterate as 0, 1, 2, 3, 4
the code is:
if alphabet.include?(str[index]) == false
    next
   else
    wave_collector[index].sub!(wave_collector[index][index], str[index].upcase!)
what I intend here is
  if str at current index is not a part of the alphabet
  and else
    wave_collector[index] -> string at that index
      sub! wave_collector[index][index], str[index].upcase!




=end



# def wave(str)
#   wave_collector = []
#   alphabet = ('a'..'z').to_a
#   str_chars = str.chars
#   str_chars.delete_if {|char| alphabet.include?(char) == false}

#   0.upto(str_chars.length - 1) do |index|

#     wave_collector << str.dup
#   end

#   0.upto(str_chars.length - 1) do |index|
#    if alphabet.include?(str[index]) == false
#     next

#   else
#     wave_collector[index].sub!(wave_collector[index][index], str[index].upcase!)

#     end
#   end
#   wave_collector
# end

def wave(str)

  collector = []

  characters = str.chars
  idx = 0

  characters.each do |elem|
    characters[idx] = elem.upcase
    collector << characters.join
    characters[idx] = elem.downcase
    idx += 1
  end
  collector.delete_if {|elem| elem == str }
  collector
end

p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
p wave("[]") == []
p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
p wave("lucas is my friend") == ["Lucas is my friend", "lUcas is my friend", "luCas is my friend", "lucAs is my friend", "lucaS is my friend", "lucas Is my friend", "lucas iS my friend", "lucas is My friend", "lucas is mY friend", "lucas is my Friend", "lucas is my fRiend", "lucas is my frIend", "lucas is my friEnd", "lucas is my frieNd", "lucas is my frienD"]