###HOW_LONG_ARE_YOU###

##Problem##
# write a method that takes STRING as an argument
#   and returns an ARRAY that containts EVERY WORD
#   from string
#   to which you have appended a space and word length

#   **MAY ASSUME WORDS IN THE STRING SEPERATED BY
#   EXACTLY ONE SPACE, AND THAT ANY SUBSTRING OF NON-SPACE
#   CHARACTERS IS A WORD**

##Pseudocode//Algo##
# Define method called 'word_lengths'
#   create empty array called SUBSTRING
#   pass in string substrings with .split(' ')
# on SUBSTRING use .map! do |word|
#   counter = word.length
#   word + " " + "#{counter}"


def word_lengths(string)
  substring = string.split(' ')
  substring.map! do |word|
    counter = word.length
    word + ' ' + "#{counter}"
  end
  substring
end



p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
   ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []