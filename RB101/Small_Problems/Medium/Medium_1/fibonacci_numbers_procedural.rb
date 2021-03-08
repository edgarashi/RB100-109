###FIBONACCI_NUMBERS_PROCEDURAL###

##Problem##
# create a fibonacci sequence that does the same thing
# w/o recursion

##Pseudocode//Algo##
# define a method fibonacci
# that accepts an integer argument

# this method starts out with an array of two numbers:
#   [1, 1]
#   represents the first 2 numbers in the fibonacci sequence

#   it then proceeds to calculate each of the fibonacci numbs in turn,
#   updating the array in each iteration to include the two most recent
#   fibonacci numbers


def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) #=> 4202692702.....8285979669707537501