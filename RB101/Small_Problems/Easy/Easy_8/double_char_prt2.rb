###DOUBLE_CHAR_PRT2###

##Problem##
# write a method that takes a string as an argument
#   returns A NEW STRING in which every CONSONANT character doubled

#   **VOWELS (AEIOU), DIGITS, PUNCTUATION, AND WHITESPACE
#   NOT DOUBLED **

##Pseudocode//Algo##
# create a CONSTANT called CONSONANTS
# define method called double_consonants
#   pass in string as argument
#   create results(empty array)
# use .each_char on str with instance variable |char|
#   results << char
#   results << char if CONSONANTS.include?(char)

CONSONANTS = %w[b c d f g h i j k l m n p q r s t u v w x z]

def double_consonants(str)
  results = []
  str.each_char do |char|
    results << char
    results << char if CONSONANTS.include?(char.downcase)
  end
  results.join
end


p double_consonants('String') #== "SSttrrinngg"
p double_consonants("Hello-World!") #== "HHellllo-WWorrlldd!"
p double_consonants("July 4th") #== "JJullyy 4tthh"
p double_consonants('') #== ""