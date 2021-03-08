loop do
  puts "should i stop looping?"
  answer = gets.chomp
  break if answer== 'yes'
  puts 'nah, try "yes".'
end