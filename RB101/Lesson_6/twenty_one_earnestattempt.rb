###TWENTY-ONE-EARNESTATTEMPT###


# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.


SUITS = %w(♠ ♥ ♣ ♦)

CARDS = [
  {'Ace' => 1},
  {'Two' => 2},
  {'Three' => 3},
  {'Four' => 4},
  {'Five' => 5},
  {'Six' => 6},
  {'Seven' => 7},
  {'Eight' => 8},
  {'Nine' => 9},
  {'Jack' => 10},
  {'Queen' => 10},
  {'King' => 10}
]

#######################
require 'pry'
def clear_screen
  system('clear')
end

def prompt(msg)
  puts "=> #{msg}"
end

def opening
  clear_screen
  prompt "Welcome to Twenty-One, I am the bane of Lucas' existence"
  prompt "We are playing to #{WIN_NUM}"
  prompt "First player to reach 5 hands will be the winner"
  prompt "Press enter to deal the first hand, bitch"
  gets
end

def new_deck(deck)
  new_deck = []
  SUITS.each do |suit|
    CARDS.each do |card|
      new_deck << { suit: suit, card: card.keys[0], score: card.values[0] }

    end
  end
  new_deck.shuffle!
  deck.replace(new_deck)
end

def player_card(deck, hand, score)
  hand << deck.shift

  optimize_score(hand, score)
end

def dealer_card(deck, hand, score)
  if score.sum < BREAK_NUM
    hand << deck.shift
    optimize_score(hand, score)
  end
end

def ace?(h, optimal_card_values)
  if h[:card] == 'Ace'
    one_or_eleven(h, optimal_card_values)
  else
    h[:score]
  end
end

def one_or_eleven(h, optimal_card_values)
  if optimal_card_values.sum > (WIN_NUM - 11)
    h[:score]
  else
    h[:score] + 10
  end
end

def optimize_score(hand, score)
  optimal_card_values = []
  hand.sort_by { |h| h[:score]}.each do |h|
    optimal_card_values << ace?(h, optimal_card_values)
  end

  score.replace(optimal_card_values)
end

def display_hand(hand)
  hand.each do |h|
    puts h[:card].center(10)
    puts "of".center(10)
    puts h[:suit].center(10)
    puts "-------------"
  end
end

def display_showing(dhand, phand)
  clear_screen
  showing_dealer = dhand.drop(1)

  prompt "Dealer's Hand:"
  puts "------------"
  puts "Face Down".center(10)
  puts "------------"
  display_hand(showing_dealer)
  prompt "Player's Hand:"
  display_hand(phand)
end

def display_table(dhand, phand)
  clear_screen
  prompt "Dealer's Hand:"
  display_hand(dhand)
  prompt "Player's Hand:"
  display_hand(phand)
end

def busted?(dealer, player)
  if dealer.sum > WIN_NUM && player.sum > WIN_NUM
    "Both Hands Busted!"
  elsif player.sum > WIN_NUM
    "Player Busted!"
  elsif dealer.sum > WIN_NUM
    "Dealer Busted!"
  end
end

def hit_stay(dscore, pscore)
  if busted?(dscore, pscore)
    answer = 's'
  else
    loop do
      prompt "Hit or Stay? (h/s)"
      answer = gets.chomp.downcase
      break if answer.start_with?("h", "s")
      prompt "That's not a valid choice, hombre"
    end
  end
  answer
end

def keep_score(dscore, pscore, overall_score)
  case choose_winner(dscore, pscore)
  when 'Dealer Busted!'
    overall_score['Player'] += 1
  when 'Player'
    overall_score['Player'] += 1
  when 'Player Busted!'
    overall_score['Dealer'] += 1
  when 'Dealer'
    overall_score['Dealer'] += 1
  end
  hands_won(overall_score)
end

def choose_winner(dscore, pscore)
  winner = nil
  if busted?(dscore, pscore)
    prompt busted?(dscore, pscore)
    winner = busted?(dscore, pscore)
  elsif dscore.sum > pscore.sum
    prompt "Dealer Wins!"
    winner = "Dealer"
  elsif pscore.sum > dscore.sum
    prompt "Player Wins!"
    winner = "Player"
  else
    prompt "It's a tie!"
  end
  winner
end


def hands_won(overall_score)
  prompt "Dealer has won #{overall_score['Dealer']} hand(s)"
  prompt "Player has won #{overall_score['Player']} hand(s)"
end

def display_scores(dscore, pscore)
  prompt "Dealer's Score is #{dscore.sum}"
  prompt "Player's Score is #{pscore.sum}"
end

#####GAME LOOP#####
deck = []
WIN_NUM = 21
BREAK_NUM = (WIN_NUM - 4)


overall_score = { 'Player' => 0, 'Dealer' => 0 }
opening

new_deck(deck)
players_hand = []
players_score = []
dealer_hand = []
dealer_score = []


clear_screen
dealer_card(deck, dealer_hand, dealer_score)
player_card(deck, players_hand, players_score)
display_showing(dealer_hand, players_hand)
display_table(dealer_hand, players_hand)

loop do
  h_or_s = hit_stay(dealer_score, players_score)
  if h_or_s.start_with?('s')
    break if dealer_score.sum >= BREAK_NUM
    dealer_card(deck, dealer_hand, dealer_score)
  elsif h_or_s.start_with?('h')
    dealer_card(deck, dealer_hand, dealer_score)
    player_card(deck, players_hand, players_score)
  end
  break if busted?(dealer_score, players_score) &&
            dealer_score.sum >= BREAK_NUM
        display_showing(dealer_hand, players_hand)
        prompt "Player's score is #{players_score.sum}"
        hands_won(overall_score)
end

display_scores(dealer_score, players_score)
keep_score(dealer_score, players_score, overall_score)