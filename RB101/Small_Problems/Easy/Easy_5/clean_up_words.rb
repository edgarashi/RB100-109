#given string consists of some words (all lowercased)
#and assortment of non-alphabetic characters
#write a method that returns string with all of the
#non-alphabetic characters replaced by spaces
#if one or more non-alphabetic characters occur in a row
#should only have one space in result
#(result should never have consecutive spaces)

ALPHABET = ('a'..'z').to_a

def cleanup(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end

  clean_chars.join
end




# Examples:
puts cleanup("---what's my +*& line?") == ' what s my line '