require 'pry'
##-------------------------CONSTANSTS-------------------------##
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[2, 5, 8], [1, 4, 7], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]] # diagnls
INITIAL_MARKER = ' '
CENTER_SQUARE = 5
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WHO_MOVES = "choose"

##------------------------------------------------------------##


def prompt(msg)
  puts "=> #{msg}"
end

def joinor(arr, punctuation=",",join="or")
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{join} ")
  else
    arr[-1] = "#{join} #{arr.last}"
    arr.join(punctuation)
  end
end

def clear_screen
  system 'clear'
end

def display_board(brd, wins)
  clear_screen
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts "Player wins: #{wins['Player']}. Computer wins: #{wins['Computer']}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end

def initialize_player_order
  case WHO_MOVES
  when 'player' then [player, computer]
  when 'computer' then [computer, player]
  when 'choose' then choose_first_player
  else [player, computer]
  end
end

def choose_first_player
  clear_screen
  player_one = ''
  player_array = ['player', 'computer']
  loop do
    prompt "Who'd you like to go first? (player or computer)"
    player_one = gets.chomp.downcase

    break if player_one == 'player' || player_one == 'computer'
    prompt "Invalid selection, hombre"
  end

  player_array.delete(player_one)
  player_two = player_array.join
  [player_one, player_two]
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that ain't a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def threat(brd, marker)
  WINNING_LINES.each do |line|
   return true if brd.values_at(*line).count(marker) == 2 &&
                  brd.values_at(*line).count(INITIAL_MARKER) == 1
  end
  false
end

def computer_find_that_square(brd, marker)
  winning_line =
    WINNING_LINES.select do |line|
      brd.values_at(*line).count(marker) == 2 &&
      brd.values_at(*line).count(INITIAL_MARKER) == 1

    end

    winning_line.flatten!.uniq!



    winning_line.each do |sqr|
      return sqr if brd[sqr] == INITIAL_MARKER
    end
  end


def computer_places_piece!(brd)

  square = nil
    if threat(brd, COMPUTER_MARKER)
      square = computer_find_that_square(brd, COMPUTER_MARKER)
    elsif threat(brd, PLAYER_MARKER)
      square = computer_find_that_square(brd, PLAYER_MARKER)
    elsif brd[CENTER_SQUARE] == INITIAL_MARKER
      square = CENTER_SQUARE
    else
     square = empty_squares(brd).sample
    end


    brd[square] = COMPUTER_MARKER


end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end


def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return "Player"
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return "Computer"
    end
  end
  nil
end

def place_piece!(brd, player)
  case player
  when 'player' then player_places_piece!(brd)
  when 'computer' then computer_places_piece!(brd)
  end
end

def alternate_player(player, player_order)
  player == player_order[0] ? player_order[1] : player_order[0]
end

def welcome_screen
  clear_screen
  prompt "Welcome to Tic Tac Toe, baby!"
  prompt "We will play until one of us has a score of 5"
end

def increase_wins(brd, wins)
  winner = detect_winner(brd)
  wins[winner] += 1
end

def final_winner?(wins)
  wins.values.any? { |value| value == 5 }
end

def who_won_final?(wins)
  wins.each_pair { |key, value| return key if value == 5 }
end

def display_final_winner(winner)
  prompt "The winner is #{winner}"
end

def play_again?
  prompt "Would you like to play again? (y/n)"
  answer = gets.chomp
  answer
end

## Main Game Loop ##
loop do
  welcome_screen
  wins = { 'Player' => 0, 'Computer' => 0 }
  winner = ""

  loop do
    board = initialize_board
    player_order = initialize_player_order
    current_player = player_order.first


    loop do
      display_board(board, wins)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player, player_order)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board, wins)

    if someone_won?(board) && detect_winner(board) == 'Player'
      prompt "#{detect_winner(board)} won!"
      increase_wins(board, wins)
    elsif someone_won?(board) && detect_winner(board) == 'Computer'
      prompt "#{detect_winner(board)} won!"
      increase_wins(board, wins)
    else
      prompt "It's a tie!"
    end

    if final_winner?(wins)
      display_board(board, wins)
      winner = who_won_final?(wins)
      break
    end
  end

    display_final_winner(winner)

    break unless play_again? == 'y'
  end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
