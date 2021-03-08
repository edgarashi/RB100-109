###NUMBER GUESSING GAME###

# Number guessing game:
# first version picks a random numb btwn 1 and provided max numb
# and offers u a given number of attempts to guess it

# **However when you try it, notice that it's not working as expected**


def valid_integer?(string)
  string.to_i.to_s == string
end

def clear_screen
  system('clear')
end

def guess_number(max_number, max_attempts)##defining method, two arguments
  #first argument creates max of range from 1
  #second argument sets amount of attempts
  winning_number = (1..max_number).to_a.sample

  attempts = 0

  clear_screen
  puts '----------------------------------'
  puts "Welcome to Guess That Number!"
  puts "Your range is 1 to #{max_number}"
  puts "You have #{max_attempts} attempts."
  puts '----------------------------------'
  gets

  loop do
    attempts += 1
    break if attempts > max_attempts

    input = nil
    until valid_integer?(input)

      puts "------------------------------"
      puts "You have #{(max_attempts+1)-attempts} attempt(s) left"
      puts 'Make a guess: '
      puts "------------------------------"
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      puts 'Yes! You win.'
      break
   else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number
    end
    if guess == winning_number
      puts "Do you want to try again?"
      answer = gets.chomp
      if answer.start_with?('y')
        guess_number(max_number, max_attempts)
      end
    end
  end
end

guess_number(10, 3)
