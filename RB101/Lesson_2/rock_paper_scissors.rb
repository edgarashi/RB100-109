VALID_CHOICES = %w[rock paper scissors]

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_results(player, computer)
  if (player == 'rock' && computer == 'scissors') ||
     (player == 'paper' && computer == 'rock') ||
     (player == 'scissors' && computer == 'paper')
    prompt (".......you won")
  elsif (player == 'rock' && computer == 'paper') ||
      (player == 'paper' && computer == 'scissors') ||
      (player == 'scissors' && computer == 'rock')
    prompt("I WIN")
    prompt("....")
    prompt("cuckboy")
  else
    prompt("it's a fucking tie. no one wins and loses")
    prompt("what's the point")
  end
end

loop do
  choice = ''
  loop do
    prompt("I challenge you to rock, paper, scissors, human")
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice, bitch")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}, I chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  prompt("Or are you a scared little girl?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Please return.")
prompt("I'm a lonely computer")
