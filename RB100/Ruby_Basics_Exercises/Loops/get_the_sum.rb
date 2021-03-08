loop do
  puts 'what does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer==4
    puts "that's correct bb!"
    break
  else 
    puts "NAH TRY AGAIn"
  end
end