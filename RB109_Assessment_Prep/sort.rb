=begin
Given a standard English sentence passed in as a string, write a method that will return a sentence made up of the same words, but sorted by their first letter. However, the method of sorting has a twist to it:

- All words that begin with a lowercase letter should be at the beginning of the sorted sentence, and sorted in ascending order.
- All words that begin with an uppercase letter should come after that, and should be sorted in descending order.

If a word appears multiple times in the sentence, it should be returned multiple times in the sorted sentence. Any punctuation must be discarded.

Example:

Given the input string "Land of the Old Thirteen! Massachusetts land! land of Vermont and Connecticut!", your method should return "and land land of of the Vermont Thirteen Old Massachusetts Land Connecticut".

Lower case letters are sorted a -> l -> l -> o -> o -> t and upper case letters are sorted V -> T -> O -> M -> L -> C.
=end

=begin
  -----------------------INSTRUCTIONS--------------------------------------
Given a standard English sentence passed in as a string, write a method that will return a sentence made up of the same words,
 but sorted by their first letter. However, the method of sorting has a twist to it:

- All words that begin with a lowercase letter should be at the beginning of the sorted sentence, and sorted in ascending order.
- All words that begin with an uppercase letter should come after that, and should be sorted in descending order.

--------------------------PROBLEM----------------------------------------

Questions:

Input: string

Output: string
        -> (all words begin with lowercase at beginning of sorted sentence)
        ->- All words that begin with an uppercase letter should come after that, and should be sorted in descending order.

---------------------------RULES-----------------------------------------
Explicit:

Implicit:

--------------------------EXAMPLES---------------------------------------
p sort("I, habitan of the Alleghanies, treating of him as he is in himself in his own rights") == "as habitan he him himself his in in is of of own rights the treating I Alleghanies"




p sort("Land of the Old Thirteen! Massachusetts land! land of Vermont and Connecticut!") == "and land land of of the Vermont Thirteen Old Massachusetts Land Connecticut"
p sort("take up the task eternal, and the burden and the lesson") == "and and burden eternal lesson take task the the the up"
p sort("Pioneers, O Pioneers!") == "Pioneers Pioneers O"


----------------------------ALGO----------------------------------------
Goals)
    get all lowercase words in an array
    get all words startin with uppercase in an array
    remove punctuation (helper?)
    sort both
      lowercase sorted alphabetical (ascending)
      uppercase sorted alphabetical (descending)

=end

ALPH = ('a'..'z').to_a
def remove_punctuation(word)

  word.chars.each do |char|
    if !ALPH.include?(char.downcase)
      word.gsub!(char, '')
    end
  end
  word
end

def sort(str)
  lowercase = []
  uppercase = []
  result = ''
  words = str.split

  words.each {|word| remove_punctuation(word)}

  words.each do |word|
   if ALPH.include?(word[0])
    lowercase << word
   else
    uppercase << word
   end
  end

  lowercase.sort!
  uppercase = uppercase.sort.reverse
  result = (lowercase + uppercase).join(' ')
end

p sort("I, habitan of the Alleghanies, treating of him as he is in himself in his own rights") == "as habitan he him himself his in in is of of own rights the treating I Alleghanies"
p sort("Land of the Old Thirteen! Massachusetts land! land of Vermont and Connecticut!") == "and land land of of the Vermont Thirteen Old Massachusetts Land Connecticut"
p sort("take up the task eternal, and the burden and the lesson") == "and and burden eternal lesson take task the the the up"
p sort("Pioneers, O Pioneers!") == "Pioneers Pioneers O"