###ALWAYS_RETURN_NEGATIVE###

##Problem##
# write a method that takes a NUMBER as an argument
#   if argument is POSITIVE
#     return the negtive of that number
#   if number is 0 or NEGATIVE
#     return og number


##Pseudocode//Algo##
# Define a method called 'negative' that takes
#   INTEGER as argument
# Check if INTEGER is NEGATIVE with
#   intg <= 0
#   if it is NOT
#     return number/-1

###MY SOLUTION##
# def negative(intg)
#   case
#   when intg <= 0
#     intg
#   else
#     intg/-1
#   end
# end

###LS SOLUTION###
def negative(number)
  number > 0 ? -number : number
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby