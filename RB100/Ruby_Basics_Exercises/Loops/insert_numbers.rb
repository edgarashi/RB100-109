numbers = []

loop do
  puts 'enter any number, hombre'
  input = gets.chomp.to_i
  numbers << input
  if numbers[4]
    break
  end
end

puts numbers