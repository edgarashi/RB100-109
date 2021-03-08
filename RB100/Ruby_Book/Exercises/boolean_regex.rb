# boolean_regex.rb

def has_a_b?(string)
  if string =~ /b/
    puts "ya it's got a fucking b"
  else
    puts "fucken, nah"
  end
end

puts "I check for the letter B in words, give me something"
x=gets.chomp.to_s

has_a_b?(x)