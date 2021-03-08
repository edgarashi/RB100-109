#write a method returns true if string passed as an argument is
#a palindrome, false otherwise. a palindrome reads the same forward
#and backward. for this exercise, case matters as does punctuation
#and spaces

# Examples:
# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

def palindrome?(string)
  string.reverse == string
end


puts palindrome?('madam') == true
puts palindrome?('Madam') == false
puts palindrome?("madam i'm adam") == false
puts palindrome?('356653') == true