def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i
end

def read_number
  loop do
    puts "Please enter a positive or negative integer:"
    integer_1=gets.chomp

  
    return integer_1.to_i if valid_number?(integer_1)
    puts "Invalid Input. Only non-zero integers allowed baby"
  end
end


integer_1=nil
integer_2=nil


loop do
  integer_1= read_number
  integer_2 = read_number
  break if integer_1 * integer_2 < 0
  puts "One's gotta be positive, one negative"
  puts "Start over sweetie"
end

answer= integer_1.to_i + integer_2.to_i 
puts "That sum of #{integer_1.to_i} plus #{integer_2.to_i} is #{answer}"

