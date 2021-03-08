###LETTERCASE_PERCENTAGE_RATIO###

##Problem##
# write a method that takes a string and then returns a hash
# that contains 3 entries:
#   one represents percentage of characters that are lowercase
#   one percentage of characters that are uppercase letters
#   one percentage of characters that are neither

# **MAY ASSUME STRING WILL ALWAYS CONTAIN ATLEAST ONE
# CHARACTER**

##Pseudocode//Algo##
# define a method 'letter_percentages' that takes string argument
#   establish 'counts' hash
#     keys: lowercase, uppercase, neither
#     values: 0, 0 ,0
#   establish 'percentages' hash
#     keys: lowercase, uppercase, neither
#     values: [], [], []
#   establish 'characters' value
#     string.chars
#   establish 'length' value
#     string.length

#   for each of 'counts' hash
#     counts[:uppercase] = characters.count{ |char| char =~ /[A-Z]/}
#     counts[:lowercase] = characters.count{ |char| char =~ /[a-z]/}
#     counts[:neither] = characters.count { |char| char =~ /^A-Za-z]/}

#   use a 'calculate' method (will make after this)
#     pass in percentages, counts, length

#   return percentages

# define a method 'calculate'
#     pass in percentages, counts, length)

# percentages[:uppercase] = (counts[:uppercase]/length.to_f)*100
# percentages[:lowercase] = (counts[:lowercase] / length.to_f) * 100
# percentages[:neither] = (counts[:neither]/length.to_f) * 100

def letter_percentages(string)
  counts = {lowercase: 0, uppercase: 0, neither: 0}
  percentages = {lowercase: [], uppercase: [], neither: []}
  characters = string.chars
  length = string.length

  counts[:uppercase] = characters.count{ |char| char =~ /[A-Z]/}
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/}
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/}

  calculate(percentages, counts, length)

  percentages

end

def calculate(percentages, counts, length)
  percentages[:uppercase] = (counts[:uppercase] / length.to_f) * 100
  percentages[:lowercase] = (counts[:lowercase] / length.to_f) * 100
  percentages[:neither] = (counts[:neither] / length.to_f) * 100
end





p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }