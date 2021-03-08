###SUMSQUARE_SQUARESUM###

##Problem##
# write a method that computes the diff btwn
#   square and sum of first n positive integers
#   and the sum of the squares of first n positive integers


##Pseudocode//Algo##
# define method sum_square_difference
#   that accepts an integer argument (parameter => n)
# set a local variable(sum) to reference 0
# set a local variable(square_of_sum) to ref 0

# use 1.upto(n) do |value| (value is parameter represents each iteration number)
#   sum += value
#   square_of_sum += value**2

# finally return will be
#   sum**2 - square_of_sum

def sum_square_difference(n)
  sum = 0
  square_of_sum = 0

  1.upto(n) do |value|
    sum += value
    square_of_sum += value**2
  end

  sum**2 - square_of_sum
end


p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150