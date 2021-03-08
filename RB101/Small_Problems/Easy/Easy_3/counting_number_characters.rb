##Problem##
# write a program that will ask a user for an input
# of a word or multiple words and give back the number
# of characters. spaces should not be counted
# as a character

##Pseudocode/Algo##
# Prompt user for word or multiple words
#   save in answer with gets.chomp
# Use .chars.to_a and save to an array
#   array.delete(" ") [to delete spaces]
#   return the .length of the array
#     that is the amount of characters

p "Please write a word or multiple words:"
answer = gets.chomp

array = answer.chars.to_a
array.delete(" ")
characters = array.length

p "There are #{characters} characters in #{answer}"