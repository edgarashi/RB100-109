##Problem##
# write a program that asks the user to enter an integer
# greater than 0, then asks if the user wants to determine
# sum or product of all numbers between 1 and the entered integer


##Pseudocode/Algo##
# p asking the user to "enter an integer > 0"
# save that in num = gets.chomp.to_i

# p asking user to "enter 's' to get sum, 'p' to get product"
# answer = gets.chomp

# create a conditional to either
#   multiply range of integers
#   sum range of integers
##USE INJECT method

##create a case statement for ans
###when 's' then .inject(:+), when 'p' then .inject(:*)
  #save this result under variable 'result'
  #return result in string

def prompt(message)
  p ">> #{message}"
end

prompt("Please enter an integer greater than 0")
num = gets.chomp.to_i

prompt("Enter 's' to compute the sum, 'p' to compute the product")
ans = gets.chomp

result = 0
case ans
when 's' then
  result = (1..num).inject(:+)
  p "The sum of the integers between 1 and #{num} is #{result}"
when 'p' then
  result = (1..num).inject(:*)
  p "The product of the integers between 1 and #{num} is #{result}"
end
