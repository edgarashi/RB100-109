=begin
Problem:
  given an array of strings
  return an array of string integers
    represent the amount of characters in the string
    that occupy their place in the alphabet
  for example:
    abtt -> 2 because a is 1st index, b is 2nd index
    ABc -> 3 because A and B and c indexes match their alphabet position
      *also indicates case does not matter

Data Structure:
input -> array
output -> array

Pseudocode:
First idea:
create a hash where keys are alphabet and values are position in alphabet

iterate through argument array
  break element down to it's characters
  downcase characters
  compare to hash to see if indexs match values
  if they do add to a counter
    for each string pass this counter to a result array
  return result array



=end

require 'pry'
def alphabet_hash
  alphabet = ('a'..'z').to_a
  hsh = {}

  0.upto(alphabet.length - 1) do |index|
    hsh[alphabet[index]] = index + 1
  end
  hsh
end

def solve(arr)
  alphabet = alphabet_hash
  result = []

  (arr.length).times {result << 0}

  arr.map! do |string|
    string.downcase
  end

  arr.each_with_index do |string, index_string|
    string.chars.each do |char|
      index1 = alphabet[char] #gets value/index of character in alphabet hash
      index2 = (string.index(char) + 1) #gets index of character in string + 1

      if index1 == index2
        result[index_string] += 1
      end
      string.sub!(char, ' ')
    end
  end

  result
end


p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) #== [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]