=begin
Problem:
Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.

Data Structure:
input -> string
output -> string

Pseudocode/Algo
  turn string into it's characters, save to variable chars
  save the first character as a variable
  remove at first index
  add first_letter and ay to end




=end

def pig_latin(word)
  if word.length > 1
    chars = word.chars #H, e, l, l, o
    first_letter = chars[0]
    chars.delete_at(0)
    chars << first_letter + 'ay'
    chars.join
  else
    word + 'ay'
  end
end


def pig_it(str)
  alphabet = ('a'..'z').to_a
  words = str.split
  result = []
  words.each do |word|
    if word.length == 1 && !alphabet.include?(word.chars[0].downcase)
      result << word
    elsif word.length == 1 && alphabet.include?(word.downcase)
      result << pig_latin(word)
    else
      result << pig_latin(word)
    end
  end
  result.join(' ')
end

p pig_it("O tempora o mores !") == "Oay emporatay oay oresmay !"
p pig_it('Hello world !') == 'elloHay orldway !'
p pig_it('Pig latin is cool') == 'igPay atinlay siay oolcay'
p pig_it('This is my string') == 'hisTay siay ymay tringsay'
