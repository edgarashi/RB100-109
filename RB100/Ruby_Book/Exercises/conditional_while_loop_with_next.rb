# conditional_while_loop_with_next.rb
# used next (reserved word) to avoid printing 3 in loop
x = 0 

while x <= 10
  if x == 3
    x += 1
    next 
  elsif x.odd?
    puts x
  end
  x += 1
end