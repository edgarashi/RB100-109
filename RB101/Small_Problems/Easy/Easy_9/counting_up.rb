###COUNTING_UP###

##Problem##
# write a method that takes an INTEGER argument
#   returns ARRAY OF ALL INTEGERS
#     in sequence
#     btwn 1 and the argument

#   **MAY ASSUME ARGUMENT WILL ALWAYS BE VALID INTEGER
#   GREATER THAN 0**


##Pseudocode//Algo##
# Define a method named 'sequence' that takes INTEGER
# as argument

# create an empty ARRAY called 'all_integers'

# use 1.upto(intg) method to pass in all intgers to array


##MY SOLUTION##
# def sequence(intg)
#   all_integers = []

#   1.upto(intg) do |indx|
#     all_integers << indx
#   end
#   all_integers
# end

###LS SOLUTION###
def sequence(number)
  (1..number).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
