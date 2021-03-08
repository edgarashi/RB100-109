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


def one_letter_choice(answer)
  if answer = 'r'
    answer == 'rock'
  end
end

loop do
  choice = ''
  new_choice= ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()
    new_choice==one_letter_choice(choice)
    puts new_choice

    if VALID_CHOICES.include?(new_choice)
      break
    else
      prompt("That's not a valid choice, bitch")
    end
  end
end