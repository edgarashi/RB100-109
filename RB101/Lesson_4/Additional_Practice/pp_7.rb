statement = "The Flintstones Rock"

#create a hash that expresses the frequency with which each letter occurs in this string
#ex.
#   {"F"=>1, "R"=>1, "T"=>1,"c"=>1,"e"=2,...}

# my solution:
# statement_hash={}
# instances=0

# statement.each_char do |letter|
#   instances=statement.count letter
#   statement_hash.store(letter,instances)
# end

# puts statement_hash

#ls solution:
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

puts result
