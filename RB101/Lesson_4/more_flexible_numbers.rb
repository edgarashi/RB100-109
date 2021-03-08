def multiply(numbers, multiply_number)
  doubled_numbers = []
  counter = 0
  selected_numbers = []

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    doubled_numbers << current_number * multiply_number

    counter += 1
  end

  puts doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
multiply(my_numbers, 3)
