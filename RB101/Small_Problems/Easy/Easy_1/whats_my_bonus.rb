#write a method that takes two arguments, positive integer and a boolean
#calculates the bonus for a given salary
#if boolean is true, bonus should be half of the salary
#if boolean is false, bonus should be 0

###PSEUDOCODE/ALGO
# We gonna try a 'ternary operator'
# so for this it will be
#   bonus ? salary/2 : 0


# a more elegant solution:
def calculate_bonus(salary, bonus)
  bonus ? salary/2 : 0
end


#examples
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
#all should print true