=begin
Create a function named divisors/Divisors that takes an integer n > 1 and returns an array with all of the integer's divisors
(except for 1 and the number itself), from smallest to largest. If the number is prime return the string '(integer) is prime'
(null in C#) (use Either String a in Haskell and Result<Vec<u32>, String> in Rust).
Example:

divisors(12) # should return [2,3,4,6]
divisors(25) # should return [5]
divisors(13) # should return "13 is prime"

*Prime Number*
  -number > 1, divisible only by number 1 or itself


Data Structure
input -> integer
output -> array || string if number is prime

Pseudocode//Algo
  - first create a prime? method to check if input (n) is prime or not
    -if it is, return a string saying n is prime
  - if not prime, need to create an array with all n's divisors (except 1 and number itself)
      -*from smallest to largest*

  -initialize a result array
    -iterate up to (n - 1), from 2 (because 1 cannot be included)
      -if n%number is 0, add to result array
  -sort and return result array





=end
def prime?(num)
  if num <= 1
    return false
  end

  1.upto(num - 1) do |numb|
    if num % numb == 0 && numb != num && numb != 1
      return false
    end
  end
  true
end


def divisors(n)
  if prime?(n)
    return "#{n} is prime"
  end

  result_arr = []

  2.upto(n - 1) do |number|
    if n % number == 0
      result_arr << number
    end
  end
  result_arr.sort

end




p divisors(15) == [3,5]
p divisors(253) == [11,23]
p divisors(24) == [2,3,4,6,8,12]
p divisors(13) == "13 is prime"