##Problem##
# create a function named xor that takes two arguments
# and returns true if exactly one is truthy, false otherwise
# looking for a boolean result

##Pseudocde/Algo##
# create a function named xor that accepts two arguments
#   def xor(x, y)
# ONLY one value is true for return value to be true
#     if BOTH true then false
#     if BOTH false then false

# So
#   if x == true && y == false
#     return true
#   elsif x == false && y == true
#     return true
#   else
#     return false

def xor?(x, y)
  if x == true && y == false
    return true
  elsif x == false && y == true
    return true
  else
    return false
  end
end




#Test Cases#
p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false