def one_letter_choice(answer)
  if answer.to_s.downcase! == 'r'
    answer == "rock"
  end
end

new_choice = ''

puts "Gimme somn"
choice=gets.chomp
puts choice
  if choice.to_s.start_with?('r') == true
    new_choice << 'rock'
  elsif choice.to_s.start_with?('l')
    new_choice << 'lizard'
  elsif choice.to_s.start_with?('p')
    new_choice << 'paper'
  elsif choice.to_s.start_with?('s')
    puts "Scissors or Spock, son?"
    new_choice << gets.chomp
  end


p new_choice