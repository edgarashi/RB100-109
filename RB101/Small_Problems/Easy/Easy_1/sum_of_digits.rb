#write a method that takes on argument, a positive integer
#and returns the sum of its digits


##Pseudocode/Algorithm##
# define method named sum, pass in number
#   set a value named sum equal to 0
#   set a value named str_digits and set it equal to numbers.to_s.chars
    # (seperates the numbers)

# use str_digits value and run each do on it |str_digit|
      #sum += str_digit.to_i

#return sum


def sum(number)
  sum = 0
  str_digits = number.to_s.chars

  str_digits.each do |str_digit|
    sum += str_digit.to_i
  end
  sum
end



#examples:
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45