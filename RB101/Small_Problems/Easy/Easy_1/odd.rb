#Write a method that takes one integer argument, which may be
#positive, negative, or zero. This method returns true if
#the numbers' absolute value is odd
#may assume that argument is a valid integer value
### CANNOT USE odd? or even? ###


###PSEUDOCODE###
# define method called is_odd?
## pass in integer
## use modulo, if leftover is 1, return true

def is_odd?(integer)
  integer % 2 == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true