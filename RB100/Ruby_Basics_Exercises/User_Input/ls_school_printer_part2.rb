#Modify this program so it repeats itself after each input/print iteration, asking for a new number each time through. 
#The program should keep running until the user enters q or Q
loop do
  input_string = nil
  number_of_lines = nil 

  loop do
    puts "How many lines u want? Enter number >= 3:" \
         "Enter a number >= 3 (Q to Quit):" 
  
    input_string = gets.chomp.downcase
    break if input_string == 'q'

    number_of_lines=gets.to_i
    break if number_of_lines >=3
    
    puts "not enough lines, bucko"
  end

  break if input_string == 'q'


  while number_of_lines>0
    puts "LS is the best!"
    number_of_lines -= 1
  end
end