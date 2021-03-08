=begin
Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the original string.

All letters will be lowercase and all inputs will be valid.

Data Structure
input -> string
output -> string

Pseudocode/Algo
Need an alphabet array for scoring
  (index + 1) will equal 'score' of each character
and a counter
Maybe a hash to save 'score' of each word?
  key beign the word
  value being the score
Return key with highest value
  how? now is the question
  i succesfully scored each word
  now how do I filter by values



=end

def score_word(word)
  alphabet = ('a'..'z').to_a
  chars = word.chars
  score = 0
  counter = 0

  chars.each do |char|
    score = (alphabet.index(char) + 1)
    counter += score
    score = 0
  end
  counter
end




def high(x)
  hsh = {}
  counter = 0
  words = x.split
  result = []

  0.upto(words.length - 1) do |index|
    score = score_word(words[index])
    hsh[words[index]] = score
    score = 0
  end

  max_val = hsh.values.max
  hsh.each do |k, v|
    if v == max_val
      result << k
    end
  end
  result.first



end

p high('man i need a taxi up to ubud') == 'taxi'
 p high('what time are we climbing up the volcano') == 'volcano'
 p high('take me to semynak') == 'semynak'
 p high('aaa b') == 'aaa'
p high('aaa ba') == 'aaa'