def factors(number)
  divisor = number
  factors = []
  begin
    if number <= 0
      puts "Please no 0 or negative integers...fucker"
      break
  end
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

puts factors(0)
puts factors(4)