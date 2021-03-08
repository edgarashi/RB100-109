=begin
Problem:
given a number (n) return the maximum number that could be formed
from the digits of the number given
  -only natural number passed to function(numbers contain digits 0..9)
  -digit dupications could occur
  -consider it when forming the larges

ex.
  213 -> return 321
    321 has same digits and is larger than 213
    i.e. [2, 1, 3] -> [3, 2, 1]

Data Structure:
input -> integer
output -> integer (higher number same digits)

Pseudocode/Algo
Goals:
  need to iterate up from n
  stop iteration if find a number that has same digits as n
  way of validation I thought was arrays sorted
    if n -> digit_array && each iteration number -> digit_array
      then compare n digit array sorted to iteration digit array sorted
      if they do equal one another return that number

Need a number that I STOP at though
  digit cant be number with an EXTRA digit from n
  could validate based on array length with an infinite loop
  or could get number initially
  let's try loop

Option 2)
  first idea 'works' in the sense that it creates the proper output
  however it takes too long and does not work with larger integers
  what I am now thinking is simply sorting and joining the digits of input (n)
    this will create the largest possible integer because it will have largest to smallest number with same digits



=end





def max_number(n)
  n.digits.sort.reverse.join.to_i
end

p max_number(213) == 321
p max_number(7389) == 9873
p max_number(63792) == 97632
p max_number(566797) == 977665
p max_number(1000000) == 1000000
