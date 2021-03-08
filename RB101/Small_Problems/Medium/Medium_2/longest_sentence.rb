###LONGEST_SENTENCE###

##Problem##
# write a program that reads the content of a text file
# and prints the longest sentence in the file based on
# number of words

# **sentences may end with periods(.), exclamation points (!),
# or question marks(?)**

# any sequence of characters that are not spaces or
# sentence-ending characters should be treated as a word
# also print the number of words in the longest sentence

##Pseudocode//Algo##
# define variable text as
#   File.read('sample_text.txt')
# create a sentences arr using
#   sentences = text.split(/\.|\?|!/)
# make a largest_sentence variable using
#   sentences.max_by { |sentence| sentence.split.size}
# use .strip on largest_sentence
# create 'number_of_words' variable equal to
#   largest_sentence.split.size

# put "#{largest_sentence}"
# put "Containing #{number_of_words} words"

text = File.read('sample_text.txt')
sentences = text.split(/\.|\?|!/)
largest_sentence = sentences.max_by {|sentence| sentence.split.size}
largest_sentence = largest_sentence.strip
number_of_words = largest_sentence.split.size

puts "#{largest_sentence}"
puts "Containing #{number_of_words} words"
