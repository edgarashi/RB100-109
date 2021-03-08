###Problem###
# write a program that prompts user for two positive integers
# prints the results of the following operations on those
# two numbs: add, subtract, product, quotient,
# remainder, and power

# **DO NOT WORRY ABOUT VALIDATING INPUT**

##Pseudocode/Algo##
# Create a prompt method that takes a variable named (message)
#   pass in prompts to this method to 'puts' them to the screen

# Prompt user for a first number
#   save answer as first_numb = gets.chomp.to_i
# Prompt user for a second number
#   save answer as second_numb = gets.chomp.to_i

# Prompt out
#   them added
#   subtracted
#   multiplied
#   divided
#   modulod
#   and squared

def prompt(message)
  p "==> #{message}"
end

prompt("Enter the first number:")
first_numb = gets.chomp.to_i
prompt("Enter the second number:")
second_numb = gets.chomp.to_i

sum = (first_numb + second_numb)
difference = (first_numb - second_numb)
product = (first_numb * second_numb)
quotient = (first_numb/second_numb)
remainder = (first_numb%second_numb)
power = (first_numb**second_numb)

prompt("#{first_numb} + #{second_numb} = #{sum}")
prompt("#{first_numb} - #{second_numb} = #{difference}")
prompt("#{first_numb} * #{second_numb} = #{product}")
prompt("#{first_numb} / #{second_numb} = #{quotient}")
prompt("#{first_numb} % #{second_numb} = #{remainder}")
prompt("#{first_numb} ** #{second_numb} = #{power}")
