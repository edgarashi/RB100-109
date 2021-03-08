#Write a method that returns true if its integer argument is palindromic, false otherwise.
#A palindromic number reads the same forwards and backwards.

#my solution:
# def palindromic_number?(number)
#   new_number=number.to_s.reverse!
#   new_number.to_i == number
# end

#LS solution:
def palindrome?(string)
  string.reverse == string
end

def palindromic_number?(number)
  palindrome?(number.to_s)
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true