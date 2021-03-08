loop do
  1.times {puts "do you want me to print something (y/n)"}
  choice=gets.chomp.downcase
if choice=='y'
    puts 'something'
    break
  elsif choice=='n'
    puts "try again"
  else 
    puts "Error: Give me a right answer, mofo"
  end
end