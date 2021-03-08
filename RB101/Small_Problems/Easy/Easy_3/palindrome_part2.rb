#write a method returns true if string passed as an argument is
#a palindrome, false otherwise.
#now case-INSENSTIVE, and ignore all non-alphanumeric characters


# Examples:
# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false


#my messy ass solution
# def real_palindrome?(string)
#   new_string=string.downcase.gsub(/[^\w\s]/, '')
#   new_new_string=new_string.gsub(' ', '')
#   new_new_string.reverse! == new_new_string
# end

def palindrome?(string)
  string.reverse == string
end

#LS solution
def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false