words = "the flintstones rock"
# words.split.map do |word|
#   p word.capitalize.join
# end

p words.split.map { |word| word.capitalize }.join(' ')



# words_array=[]
# words_array<<words.split(' ')

# words_array.each do |value|
#   p value
# end




#goal to get words="The Flintstones Rock"

#def titleize(string)


# result = []

# result = words.scan(words)

# p result

# puts words.capitalize!
#this capitalizes just The, so if I can divide up the string
#into an array, I can capitalize all of them