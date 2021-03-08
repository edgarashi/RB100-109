#Write a method that takes two arguments, a string and a positive
#integer, and prints the string as many times as the integer indicates

##Example##
# repeat('Hello', 3)

##Pseudocode/Algo##
# define method named 'repeat'
#   pass in string and positive integer
# in block
#   use .times method (integer method)

def repeat(string, integer)
  integer.times do
    puts string
  end
end

repeat('Hello', 3)