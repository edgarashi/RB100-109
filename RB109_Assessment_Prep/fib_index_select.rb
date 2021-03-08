# Select the element out of the array if its index is a fibonacci number.

# Fibonacci sequence.
# The sequence is a series of numbers characterized by the fact that every number is the sum of the two numbers preceding it in the sequence.

=begin
-----------------------INSTRUCTIONS--------------------------------------
# Select the element out of the array if its index is a fibonacci number.
--------------------------PROBLEM----------------------------------------

Questions:

Input: array(of integers or of alphabetical characters)

Output: is array with only elements with fibonacci index

---------------------------RULES-----------------------------------------
Explicit:

Implicit:

--------------------------EXAMPLES---------------------------------------



----------------------------ALGO----------------------------------------
Create fibonacci helper method,
Select, check if index of each element is fibonacci
  if true keep
  if false no
=end

# def fibonacci?(num)
#   fibonacci = [0, 1]


#   1.upto(num + 1) do |number|
#     current_number = (fibonacci.last + fibonacci[fibonacci.index(fibonacci.last) - 1])
#     if number == current_number
#       fibonacci << number
#     end
#   end
#   fibonacci
# end

def is_fibonacci?(i, x = 1, y = 0)
  return true if i == x || i == 0
  return false if x > i
  is_fibonacci?(i, x + y, x)
end

def fib_index_select(arr)
  arr.select.with_index do |val, index|
    is_fibonacci?(index)
  end
end



# p fibonacci(2) #== true
# p fibonacci(3) #== true
# p fibonacci(4) #== false
# #p fibonacci(55) #== true
# #p fibonacci(1597) == true
# #p fibonacci?(1596) #== false



p fib_index_select([1, 2, 3, 4, 5, 6])
p fib_index_select(("a".."z").to_a)