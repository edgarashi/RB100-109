=begin
Your task is to sort a given string. Each word in the string will contain a single number. This number is the position the word should have in the result.

Note: Numbers can be from 1 to 9. So 1 will be the first word (not 0).

If the input string is empty, return an empty string. The words in the input String will only contain valid consecutive numbers.

Ex.
"is2 Thi1s T4est 3a"  -->  "Thi1s is2 3a T4est"
"4of Fo1r pe6ople g3ood th5e the2"  -->  "Fo1r the2 g3ood 4of th5e pe6ople"
""  -->  ""

Data Structure:
input -> string
output -> string

Pseudocode//Algo
So we are aware that every word in the string will have a number in it, in a random place
And essentially, if we could remove all characters, we are sorting based off the numbers
  Multiple Questions
    -How do I isolate the integers? Currently they are strings? And I need to keep them in the same place as a original.
    -Should we break this into characters? Words? (I think words makes most sense)
If it's a character after being converted to an integer it equals 0,
This creates a way to test every character in every word
Once found the integer, could use it as the order to pass to a result array

Convert string to array of seperated words
Initialize a result array
Initialize a variable, current_integer to 0
Iterate through each word, seperated into characters
  test each character for if they are an integer
  save that integer value to a variable current_integer
  if number is higher than current_integer then pass to result array



=end


# def order(string)
#   words = string.split
#   result = []
#   current_integer = 0

#   words.each do |word|
#     chars = word.chars
#       chars.each do |char|
#         if char.to_i == 1
#           result << word
#           current_integer = char.to_i
#           # elsif result.empty? == false && char.to_i > current_integer
#           #   result << word
#           #   current_integer = char.to_i
#         end
#       end
#     end
#   (string.length).times do
#     words.each do |word|
#     chars = word.chars
#       chars.each do |char|
#         if char.to_i == (current_integer + 1)
#           result << word
#           current_integer = char.to_i
#         end
#       end
#     end
#   end
#   result

# end

def order(string)
  words = string.split
  result = []
  current_integer = 0

  if string == ''
    return ''
  end

  (string.length).times do
    words.each do |word|
      chars = word.chars
        chars.each do |char|
          if char.to_i == 1 && result.empty? == true
            result << word #unless result.include?(word)
            current_integer = char.to_i
          elsif result.empty? == false && char.to_i == (current_integer + 1)
            result << word #unless result.include?(word)
            current_integer = char.to_i
          end
        end
      end
    end
  result.join(' ')
end

p order("is2 Thi1s T4est 3a") == "Thi1s is2 3a T4est"
p order("4of Fo1r pe6ople g3ood th5e the2") == "Fo1r the2 g3ood 4of th5e pe6ople"
p order("") == ""