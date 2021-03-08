# reverse_sentence method should return a new string with the words
# of its argument in reverse order,
# using any of ruby's built in reverse methods
# currently raising an error



require 'pry'




def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words = [words[i]] + reversed_words
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'