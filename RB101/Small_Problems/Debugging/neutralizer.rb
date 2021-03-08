###NEUTRALIZER###

# wrote a method that removes negative words from sentences
#   *fails to remove all of them*


def neutralize(sentence) #method definition, one argument (string)
  words = sentence.split(' ') #creates array of words, saved in words variable
  clean_words = words.select do |word| #iterating over each array element
    negative?(word) == false #conditional with 'negative?' method invocation[passing in elements]

    ##boolean will be returned
  end

  clean_words.join(' ') #elements in words array joined back together into a String object
end

##Problem is that current words.delete(word) if negative?(word) is only deleting ONE of the key words
##all others persist(WRONG)

##Actually just can't delete two CONSECUTIVE 'negative' words

##FIXED using .select!


def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.