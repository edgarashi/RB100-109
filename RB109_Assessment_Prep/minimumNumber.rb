=begin
# Task :

# Given a List [] of n integers , find minimum number to be inserted in a list, so that sum of all elements of list should equal the closest prime number .
# Notes

#     List size is at least 2 .

#     List's numbers will only positives (n > 0) .

#     Repetition of numbers in the list could occur .

#     The newer list's sum should equal the closest prime number .

# Input >> Output Examples

# 1- minimumNumber ({3,1,2}) ==> return (1)

# Explanation:

#     Since , the sum of the list's elements equal to (6) , the minimum number to be inserted to transform the sum to prime number is (1) ,
      which will make the sum of the List equal the closest prime number (7) .

# 2-  minimumNumber ({2,12,8,4,6}) ==> return (5)

# Explanation:

#     Since , the sum of the list's elements equal to (32) ,
the minimum number to be inserted to transform the sum to prime number is (5) , which will make the sum of the List equal the closest prime number (37) .

# 3- minimumNumber ({50,39,49,6,17,28}) ==> return (2)

# Explanation:

Since , the sum of the list's elements equal to (189) ,
the minimum number to be inserted to transform the sum to prime number is (2) ,
which will make the sum of the List equal the closest prime number (191) .
=end

=begin
-----------------------INSTRUCTIONS--------------------------------------
# Given a array of n integers , find minimum number to be inserted in a list,
so that sum of all elements of list should equal the closest prime number .

\# A prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.
--------------------------PROBLEM----------------------------------------

Questions:

Input: array (of integers)

Output: integer(when inserted, array sum equals closest prime number?)

---------------------------RULES-----------------------------------------
Explicit: array size is at least 2
          array will only contain positives
          repetition could occur
          returned list's sum should equal closest prime number

Implicit:

--------------------------EXAMPLES---------------------------------------
minimumNumber ({3,1,2}) ==> return (1)

#     original sum = (6) , the minimum number to be inserted to transform the sum to prime number is (1) ,
      which will make the sum of the List equal the closest prime number (7) .

minimumNumber ({2,12,8,4,6}) ==> return (5)

# Explanation:

#     og sum -> (32) ,
the minimum number to be inserted to transform the sum to prime number is (5) , which will make the sum of the List equal the closest prime number (37) .

# 3- minimumNumber ({50,39,49,6,17,28}) ==> return (2)

og sum -> 189
add to, get 191, which must be prime

----------------------------ALGO----------------------------------------
\# A prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.
Goals)
  create a helper method, prime? that decides if number is prime or not
  get original sum of array
  starting with 1 add sum + num
    if answer is prime
      return number


prime? helper method (number)
  (2...number).each do |num|
    if number%num == 0
      return false
    end
  end
  return true
end

return 0 if original sum is prime?

if not do a loop with a counter,
  add array sum, and counter
  each iteration check if prime
    if true, return number and break

=end

def prime?(number)
  (2...number).each do |num|
    if number % num == 0
      return false
    end
  end
  return true
end

def minimum_number(arr)
  return 0 if prime?(arr.sum)
  counter = 1
  loop do
    answer = (arr.sum + counter)
    return counter if prime?(answer)
    counter += 1
  end
end



p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2