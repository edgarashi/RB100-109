###Problem###
# using the multiply method from last problem
# write a method that computes the square of its argument
#   (the square is the result of multiplying a number by itself)

##Pseudocode/Algo##
# have multiply method which multiplies two numbers
# create a method called square which has one integer argument
#   in method use multiply method
#   both numbers are integer argument for square

def multiply(num1, num2)
  result = (num1 * num2)
  result
end

def square(num)
  multiply(num, num)
end

##Test Cases##
p square(5) == 25
p square(-8) == 64