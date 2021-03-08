#write method determines and returns ASCII string value of a string
#that is passed in as an argument. ASCII string value is the sum of the
#ASCII values of every character in the string
#You may use String#ord to determine ASII value of a character



#Examples:
# puts ascii_value('Four score') == 984
# puts ascii_value('Launch School') == 1251
# puts ascii_value('a') == 97
# puts ascii_value('') == 0

def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord}
  sum
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
