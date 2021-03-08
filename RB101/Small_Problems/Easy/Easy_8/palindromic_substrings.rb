###PALINDROMIC_SUBSTRINGS###

##Problem##
# write a method that returns a list of all SUBSTRINGS
# of a STRING that are PALINDROMIC
#   each SUBSTRINGS must consist of same sequence
#   of characters forwards as it does backwards

# return value should be arranged in same sequence
# as substrings appear in string

# duplicate palindromes should be included multiple times

#   **CONSIDER ALL CHARACTERS AND PAY ATTENTION TO CASE
#   ASSUME SINGLE CHARACTERS ARE NOT PALINDROMES**

##Pseudocode//Algo##
# Use leading_substrings and substrings methods
# Pass STRING'S substrings into a substring array
#   create an empty results array
#   use .each on substrings array
#   pass into results array IF |substring| instance variable
#     substring.size > 1 && substring == substring.reverse

def leading_substrings(str)
  substrings = []
  1.upto(str.length) do |length|
    substrings << str[0, length]
  end
  substrings
end


def substrings(str)
  results = []
  (0...str.size).each do |start_index|
    this_substring = str[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end


def palindromes(str)
  substrings = substrings(str)
  results = []
  substrings.each do |substring|
    results << substring if substring.size > 1 && substring == substring.reverse
  end
  results
end





p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]