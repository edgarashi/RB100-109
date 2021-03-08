###FIZZBUZZ###

##Problem##
# write a method that takes TWO arguments
#   first is STARTING NUMBER
#   second is ENDING NUMBER
# print out all numbers btwn the two numbers
#   **except if a number is DIVISIBLE BY 3, print 'Fizz'**
#   **if DIVISIBLE BY 5, print 'Buzz'**
#   **if DIVISIBLE by 3 and 5, print 'FizzBuzz'**

##Pseudocode//Algo##
# Create a method 'fizzbuzz' pass in
#   integer1 = starting_number
#   integer2 = ending_number
# create empty result array
# use starting_number.upto(ending_number) do |number|
#   pass into result fizzbuzz_value(number)
# puts result.join(', ')


# Create a method fizzbuzz_value and pass in number
# use case statement for number
#   number % 3 == 0 && number % 5 == 0
#     'FizzBuzz'
#   number % 3 == 0
#     'Fizz'
#   number % 5 == 0
#     'Buzz'
#   otherwise
#     number

def fizzbuzz(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    result << fizzbuzz_value(number)
  end
  result.join(', ')
end

def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 3 == 0
    'Fizz'
  when number % 5 == 0
    'Buzz'
  else
    number
  end
end




p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
