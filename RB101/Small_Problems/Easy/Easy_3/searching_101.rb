##Problem##
# write a program that solicits 6 numbers from the user
# then prints a message that describes whether or not
# the 6th number appears amongst the first 5 numbers

##Pseudocode/Algo##
# essentially what is happening here is the user
# is asked for 6 numbers, and 5 of these numbers
# are added to an array.

# at the end the 6th number entered is checked
# against the created array to see if it is included

# therefore first create a prompt method for questions
#   using prompt method ask user for 5 numbers
#   add each of these to array using <<
#   save last number as variable last_number
#   and run .include?(last_number) on array
#     if returns true
#       last_number appears in array
#     if returns false
#       last_number does not appear in array


def prompt(message)
  p "==> #{message}"
end

array = []
prompt("Enter the 1st number:")
  array << gets.chomp.to_i
prompt("Enter the 2nd number:")
  array << gets.chomp.to_i
prompt("Enter the 3rd number:")
  array << gets.chomp.to_i
prompt("Enter the 4th number:")
  array << gets.chomp.to_i
prompt("Enter the 5th number:")
  array << gets.chomp.to_i
prompt("Enter the last number:")
  last_number = gets.chomp.to_i

  if array.include?(last_number)
    p "The number #{last_number} appears in #{array}"
  elsif array.include?(last_number) != true
    p "The number #{last_number} does not appear in #{array}"
  end