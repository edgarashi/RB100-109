count = 1

loop do
  count += 1 
  if count>=6
    break
  elsif count.even?
    puts "#{count} is even!"
  else count.odd?
    puts "#{count} is odd!"
  end
end