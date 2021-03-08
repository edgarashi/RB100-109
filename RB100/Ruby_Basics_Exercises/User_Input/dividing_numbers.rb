def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

#this one gave me so much shit so here's some explanations!
numerator=nil #doing this seemed useless but it actually initializes the variable so it can be seen by ANSWER
loop do
  puts "I'm Mr.Divide. Give me the numerator"
  numerator=gets.chomp

  break if valid_number?(numerator) #I thought this would not work, but method initialized outside of method still works
  puts "only integers homie"
end

denominator=nil
loop do
  puts "Now give me the denominator"
  denominator=gets.chomp

  if denominator == 0 #forgot about adding this, can't divide by zero! Gotta remember silly user inputs
    puts "Nah no zero."
  else
    break if valid_number?(denominator)
  puts "only integers, buddy"
end
end

ANSWER= numerator.to_i / denominator.to_i #this did not work until they were .to_i, which I didn't get, but I guess it allows "/" to work
puts "#{numerator}/#{denominator} equals #{ANSWER}"



