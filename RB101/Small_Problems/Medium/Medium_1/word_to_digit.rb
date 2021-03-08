###WORD_TO_DIGIT###

##Problem##
# write a method that takes a sentence string as input
# and returns the same string with any sequence of the words
#   'zero', 'one', 'two', 'three', 'four', 'five', 'six'
#   'seven', 'eight', 'nine'
# converted to a string of digits

##Pseudocode//Algo##
# create a constant hash called DIGIT_HASH
#   put into it all string numbers and their integer equiv

# Define a method 'word_to_digit' that accept string argument
#   use .keys.each on DIGIT_HASH
#     use .gsub on string
#     /\b#{word}\b/, DIGIT_HASH[word]

DIGIT_HASH = {'zero' => '0', 'one' => '1', 'two' => '2',
               'three' => '3', 'four' => '4', 'five' => '5',
              'six' => '6', 'seven' => '7', 'eight' => '8',
               'nine' => '9'}.freeze


def word_to_digit(string)
  DIGIT_HASH.keys.each do |word|
    string.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  string
end


p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'