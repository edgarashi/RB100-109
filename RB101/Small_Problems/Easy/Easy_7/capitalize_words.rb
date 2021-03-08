#write a method takes a single string argument and returns a new string
#that contains the og value wt first character of every word capitilized
#and all others lowercase

#may assume that the words are any sequence of non-blank characters

# Examples:
# word_cap('four score and seven') == 'Four Score And Seven'
# word_cap('the javaScript language') == 'The Javascript Language'
# word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

def word_cap(string)
  words = string.downcase.split
  capitalized_words = []

  words.each do |word|
    if word.start_with? (/[a-z]/)
      capitalized_words << word[0].upcase! + word[1..-1]
    else
      capitalized_words << word
    end
  end
  return capitalized_words.join(' ')
end

puts word_cap('four score and seven')
puts word_cap('the javaScript language')
puts word_cap('this is a "quoted" word')