##Problem##
# Imagine a sequence of consecutive even integers beginning with 2.
# The integers are grouped in rows, with the first row containing one integer,
# the second row two integers, the third row three integers, and so on.
# Given an integer representing the number of a particular row,
# return an integer represenenting the sum of all the integers in that row.




def sum_even_number_row(row_number)
  rows = []
  start_integer = 2
  row_integer = 1

  loop do
    rows << create_row(start_integer , row_integer)
    start_integer = rows[row_integer - 1][-1] + 2
    row_integer += 1

    break if rows.length == row_number
  end
  rows[row_number - 1].sum
end

def create_row(start_integer, row_length)
  row = []

  loop do
    row << start_integer
    start_integer += 2


    break if row.length == row_length
  end
  row
end

p sum_even_number_row(1) == 2
p sum_even_number_row(2) == 10
p sum_even_number_row(4) == 68



p create_row(2, 1) == [2]
p create_row(4, 2) == [4, 6]
p create_row(8, 3) == [8, 10, 12]

# 2     (row_number = 1)

# 4, 6  (row_number = 2)

# 8, 10, 12  (row_number = 3)

# 14, 16, 18, 20 (row_number = 4)