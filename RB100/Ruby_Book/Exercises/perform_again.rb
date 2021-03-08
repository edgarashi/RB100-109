# perform_again.rb

loop do
  puts "do u wanna do that again? type y for me"
  answer = gets.chomp.upcase!
  if answer != 'Y'
    break
  end
end