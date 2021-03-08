# def joinor(arr, punctuation=",",join="and")
#   case arr.size
#   when 0 then ''
#   when 1 then arr.first
#   when 2 then arr.join(" #{join} ")
#   else
#     arr[-1] = "#{join} #{arr.last}"
#     arr.join(punctuation)
#   end
# end




# p joinor([1, 2])                   # => "1 or 2"
# p joinor([1, 2, 3])                # => "1, 2, or 3"
# p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
# p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"

def computer_places_piece!(brd)
  square = nil

  # defense
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
  end

  # offense
  if !square
    WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
    end
  end


  # just pick a square
  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end