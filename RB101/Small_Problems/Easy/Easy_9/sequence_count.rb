###SEQUENCE_COUNT###

##Problem##
# create a method that takes TWO INTEGERS as arguments
#   1st argument is a count
#   2nd argument is first number of sequence that method
#   will create
# method should return an ARRAY that containts the same number
# of elements as the count argument
# while values of each element will be multiples of starting
# number

#   **MAY ASSUME THAT COUNT ARGUMENT WILL ALWAYS HAVE A
#   VALUE OF 0 OR GREATER, WHILE STARTING NUMBER CAN BE
#   *ANY* INTEGER VALUE

#   IF COUNT IS 0, EMPTY LIST RETURNED

##Pseudocode//Algo##
# Define method called sequence that accepts two
#   INTEGER arguments
#     first is count
#     second is starting number

# create empty array called 'sequence'
# create a variable 'first' equal to start_num

# use .times method with count do
#   start_num += first (incrementally adding)
#   sequence << start_num


def sequence(count, start_num)
  sequence = []
  first = start_num

  count.times do
    sequence << start_num
    start_num += first
  end
  sequence
end



p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []