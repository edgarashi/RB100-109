#write a method that takes a string and
#returns a NEW STRING in which all uppercase are lowercase
#and all lowercase is uppercase

#NO SWAPCASE

# Examples:
# swapcase('CamelCase') == 'cAMELcASE'
# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

##Pseudocode/Algo##
# Define method 'swapcase' and pass in string as an argument
#   set a variable 'characters' equal to string.chars.map
#     if a capital letter .downcase!
#     if a lower case letter .upcase!
#     else just character
#   return characters .join

def swapcase(string)
  characters = string.chars.map do |l|
    if l =~ /[A-Z]/
      l.downcase!
    elsif l =~ /[a-z]/
      l.upcase!
    else
      l
    end
  end
  characters.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
