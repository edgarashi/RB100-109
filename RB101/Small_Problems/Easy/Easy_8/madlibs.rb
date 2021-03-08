###MADLIBS###

##Problem##
# mad libs=
#   create a story template with blank for words
#   you, or another player, construct a list of words
#   place them into story

# create a simple mad-lib program that prompts for:
#   noun, verb, adverb, and adjective
#   then injects those into story that you create

##Pseudocode//Algo##
# define method 'madlibs'
#   prompt user to enter:
#     noun
#     verb
#     adjective
#     adverb

#   followed by
#     "You're a #{adjective} #{noun}?
#     I'm going to have to #{adverb} #{verb}"

def madlibs
  p "Enter a noun:"
  noun = gets.chomp

  p "Enter a verb:"
  verb = gets.chomp

  p "Enter an adjective:"
  adjective = gets.chomp

  p "Enter an adverb"
  adverb = gets.chomp

  sentence_1 = "You're a total #{adjective} #{noun}! I'm going to have to #{adverb} #{verb}"
  sentence_2 = "The nerve of #{adjective} #{noun}. He's always #{adverb} #{verb}."
  sentence_3 = "So you're #{adverb} #{verb}, huh? Sounds like you're a total #{adjective} #{noun}."

  p [sentence_1, sentence_2, sentence_3].sample
end

madlibs