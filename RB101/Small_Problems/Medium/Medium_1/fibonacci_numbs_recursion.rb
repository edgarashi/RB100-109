###FIBONACCI_NUMBS_RECURSION##

##Problem##
# create recursive fibonacci method
#   recursive methods:
#     call themselves at least once
#     have a condition that stops recursion
#     use the result returned by themselves

##Pseudocode//Algo##
# define a method called fibonacci that accepts integer argument
# If number < 2
#   1
# else
#   number = fibonacci(number-1) + fibonacci(number-2)

def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end



p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
