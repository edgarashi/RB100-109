###COUNTDOWN###

# countdown to launch not behaving correctly,
# supposed to count down from 10 to 1


counter = 10

def decrease(counter)
  counter -= 1
end

10.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'

##fixed by making local variable counter = to method invocation on counter