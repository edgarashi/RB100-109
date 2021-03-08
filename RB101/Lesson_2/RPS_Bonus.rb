VALID_CHOICES = %w[rock paper scissors spock lizard]
def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'spock' && second == 'rock') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("you win this round, fucker")
  elsif win?(computer, player)
    prompt("I WIN THIS ROUND")
    prompt("....")
    prompt("cuckboy")
  else
    prompt("it's a fucking tie. no one wins and loses")
    prompt("what's the point")
  end
end

def one_letter_choice(answer, new_answer)
  if answer.to_s.start_with?('r')
    new_answer << 'rock'
  elsif answer.to_s.start_with?('l')
    new_answer << 'lizard'
  elsif answer.to_s.start_with?('p')
    new_answer << 'paper'
  elsif answer.to_s.start_with?('s')
    puts "Scissors or Spock, son?"
    new_answer << gets.chomp
  end
end

def rules_explained(rules_answer)
  if rules_answer.downcase.start_with?('y')
    prompt("Way it works is scissors cuts paper,
            paper covers rock,
            rock crushes lizard,
            lizard poisons Spock
            spock smashes scissors,
            scissors decapitate lizard,
            lizard eats paper,
            paper disproves Spock,
            Spock vaporizes Rock,
            and Rock crushes scissors.")
  end
end

prompt("I challenge you to rock, paper, scissors, Spock, lizard!!")
prompt("Tiny ass human brain")
prompt("Would you like to know the rules?(Y/N)")
rules = gets.chomp
rules_explained(rules)
prompt("Alright, you ready to play now, baby?")
prompt("Let's play to 5.")

player_score = 0
computer_score = 0
loop do
  new_choice = ''
  choice = ''
  rules = ''

  loop do
    prompt("Type the first letter of one of the following:
            #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()
    one_letter_choice(choice, new_choice)

    if VALID_CHOICES.include?(new_choice)
      break
    else
      prompt("That's not a valid choice, bitch")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{new_choice}, I chose: #{computer_choice}")

  display_results(new_choice, computer_choice)

  if win?(new_choice, computer_choice)
    player_score += 1
  elsif win?(computer_choice, new_choice)
    computer_score += 1
  end

  prompt("Currently my score is #{computer_score}
          and you're at #{player_score}")

  if computer_score == 5
    prompt("I am the grand champion, BITCH")
    prompt("Wanna go again?")
    prompt("Or are you a scared little girl? (Y/N)")
    answer = Kernel.gets().chomp()
    break unless answer.downcase().start_with?('y')
  elsif player_score == 5
    prompt("ok so")
    prompt("you win, I guess")
    prompt("wanna, maybe, go again, cowboy?(Y/N")
    answer = gets.chomp
    break unless answer.downcase.start_with('y')
  end
end

prompt("Thank you for playing. Please return.")
prompt("I'm a lonely computer")
