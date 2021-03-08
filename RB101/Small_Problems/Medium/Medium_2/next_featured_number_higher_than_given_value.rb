###NEXT_FEATURED_NUMBER_HIGHER_THAN_GIVEN_VALUE###

##Problem##
# featured number is
#   ODD number that is MULTIPLE of 7
#   whose digits occur exactly once each
# ex.
#   49 is a featured number
#   98 is not(not odd)
#   97 is not(not multiple of 7)
#   133 is not(3 appears twice)


# write a method that takes a single INTEGER as an argument
# and returns FEATURED NUMB > argument
#   **ISSUE ERROR MESSAGE IF THERE IS NO NEXT FEATURED NUMB**

##Pseudocode//Algo##
# def method 'featured' takes argument 'integer'
# incrementally add 1 to integer until
#   integer.odd? && integer % 7 == 0
# start a loop
#   use split and .to_s to put integers into an array(number_chars)
#   return integer if number_chars.uniq == number_char
#   number += 14
#   break if number >= 9_876_543_210

def featured(integer)
  integer += 1
  integer += 1 until integer.odd? && integer % 7 == 0

  loop do
    number_chars = integer.to_s.split('')
    return integer if number_chars.uniq == number_chars
    integer += 14
    break if integer >= 9_876_543_210
  end

  "There is no possible number that fulfills those requirements."
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements