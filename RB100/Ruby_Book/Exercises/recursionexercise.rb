# Write a method that counts down to zero using recursion.
puts "I am Mr. Countdown. Give a number, and I'll count down... cutie"
x=gets.chomp.to_i

def countdown(x)
  if x == 0
    puts x
  else
    puts x
    countdown(x-1)
  end
end

countdown(x)


  


  